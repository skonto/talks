package spark.streaming.examples

import org.apache.spark.sql.{Encoders, SparkSession, functions}
import org.apache.spark.sql.functions.{window, unix_timestamp}
import org.apache.spark.sql.streaming.{OutputMode, Trigger}
import org.apache.spark.sql.types.{DataTypes, StructField, TimestampType}

import scala.concurrent.duration._

case class SensorAnalyticsConfig(
    topic: String = "",
    bootstrapServers: String = "",
    triggerTime: Long = 5, // secs
    eventTime: Long = 1, // minutes
    windowDuration: Long = 1, // minutes
    slideDuration: Long = 1 // minutes
  )

case class Data(key: String, value: String)

/**
  * Uses structured streaming to print sensor data from Kafka to console
  * It can be easily modified to save data to HDFS or another sink.
  * Spark Kafka integration docs:
  * https://spark.apache.org/docs/2.2.0/structured-streaming-kafka-integration.html
  *
  * HOW TO RUN THIS APP
  *
  * 1) Start Zookeeper and Kafka locally. Make sure you enable topic deletion at server.properties file.
  *  eg.  nohup ./bin/kafka-server-start.sh ./config/server.properties > ~/kafka/kafka.log 2>&1 &
  *
  * 2) Delete the input topic if already exists.
  *
  * <pre>
  * {@code
  * $./bin/kafka-topics.sh --zookeeper localhost:2181 --delete --topic test
  * }</pre>
  *
  * 3) Build this project with sbt
  *
  * <pre>
  * {@code
  * $sbt assembly
  * }</pre>
  *
  *
  * 3) Download Spark 2.2.0 and start the streaming job:
  *
  * * {@code
  * $./spark-submit --master local[*] \
  * --class spark.streaming.examples.SensorAnalytics spark-streaming-examples-assembly-0.0.1-SNAPSHOT.jar \
  * --bootstrapServers localhost:9092 --topic test
  *}</pre>
  *
  * 4) Run the kafka producer to add data to the input topic:
  *
  * <pre>
  * {@code
  * $ java -cp target/scala-2.11/spark-streaming-examples-assembly-0.0.1-SNAPSHOT.jar \
  * spark.streaming.examples.SensorProducer --topic test --bootstrapServers localhost:9092
  * }</pre>
  *
  * 4) Examine data in the topic:
  *
  * <pre>
  * {@code
  * $./bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic test --from-beginning
  * }</pre>
  *
  * Form should be:
  * {"sensorID":"cca60393-ab1d-4201-a00d-24d5b294238b","value":18.24090083985325,"timestamp":"2017-10-23T23:45:05.182Z"}
  *
  * 5) Examine output of the spark job.
  *  If you don't modify the defaults, every 5 sec you should see complete output at
  *  the console of counts per sensor for each 1 minute tumbling window. If you use
  *  only one sensor then you should have 60 readings per minute, one per minute of event time.
  *  You can control time of data records sent to kafka with the recordDelayTime parameter.
  *  In the following example we have two sensors.
  *
  *  -------------------------------------------
  *  Batch: 0
  *  -------------------------------------------
  *  +------+--------+--------------------+-----+
  *  |window|sensorID|Sensor location name|count|
  *  +------+--------+--------------------+-----+
  *  +------+--------+--------------------+-----+
  *
  *  -------------------------------------------
  *  Batch: 1
  *  -------------------------------------------
  *  +--------------------+--------------------+--------------------+-----+
  *  |              window|            sensorID|Sensor location name|count|
  *  +--------------------+--------------------+--------------------+-----+
  *  |[2017-10-24 02:43...|bb4d49d8-3ae0-48d...|                Rome|    1|
  *  |[2017-10-24 02:43...|cca60393-ab1d-420...|              Milano|    1|
  *  +--------------------+--------------------+--------------------+-----+
  *
  *  -------------------------------------------
  *  Batch: 2
  *  -------------------------------------------
  *  +--------------------+--------------------+--------------------+-----+
  *  |              window|            sensorID|Sensor location name|count|
  *  +--------------------+--------------------+--------------------+-----+
  *  |[2017-10-24 02:43...|bb4d49d8-3ae0-48d...|                Rome|    4|
  *  |[2017-10-24 02:43...|cca60393-ab1d-420...|              Milano|    3|
  *  +--------------------+--------------------+--------------------+-----+
  *
  *  -------------------------------------------
  *  Batch: 3
  *  -------------------------------------------
  *  +--------------------+--------------------+--------------------+-----+
  *  |              window|            sensorID|Sensor location name|count|
  *  +--------------------+--------------------+--------------------+-----+
  *  |[2017-10-24 02:43...|bb4d49d8-3ae0-48d...|                Rome|    9|
  *  |[2017-10-24 02:43...|cca60393-ab1d-420...|              Milano|    3|
  *  +--------------------+--------------------+--------------------+-----+
  *
  *  etc.
  */
object SensorAnalytics {
  def main(args: Array[String]): Unit = {
    val appName="SensorAnalytics"
    val parser = new scopt.OptionParser[SensorAnalyticsConfig](appName) {
      help("help").text("prints this usage text")
      opt[String]("topic").required().valueName("<topic>")
        .action( (x, c) =>
          c.copy(topic = x) ).text(s"Kafka topic to to get the data from.")
      opt[String]("bootstrapServers").required().valueName("<servers>")
        .action( (x, c) =>
          c.copy(bootstrapServers = x) ).text(s"triggerTime.")
      opt[Long]("triggerTime").optional().valueName("<triggerTime>")
        .action( (x, c) =>
          c.copy(triggerTime = x) ).text(s"triggerTime.")
      opt[Long]("eventTime").optional().valueName("<eventTime>")
        .action( (x, c) =>
          c.copy(eventTime = x) ).text(s"eventTime.")
      opt[Long]("windowDuration").optional().valueName("<windowDuration")
        .action( (x, c) =>
          c.copy(windowDuration = x) ).text(s"windowDuration.")
      opt[Long]("slideDuration").optional().valueName("<slideDuration>")
        .action( (x, c) =>
          c.copy(slideDuration = x) ).text(s"slideDuration.")
    }

    val conf = parser.parse(args, SensorAnalyticsConfig())

    conf match {
      case Some(config) =>
        // Set to WARN to avoid verbose output for the example code
        Util.setStreamingLogLevels()

        // Create the spark session
        val spark = SparkSession
          .builder
          .appName("Sensor Streaming Analytics.")
          .getOrCreate()

        import spark.implicits._

        // Use maxOffsetsPerTrigger if you want to avoid all data read at once
        // when re-starting the app
        val df = spark
          .readStream
          .format("kafka")
          .option("kafka.bootstrap.servers", config.bootstrapServers)
          .option("subscribe", config.topic)
          .option("startingOffsets", "earliest")
          .load()

        // Our json schema
        val schema = DataTypes.createStructType(Array[StructField] (
          DataTypes.createStructField("sensorID", DataTypes.StringType, false),
          DataTypes.createStructField("value", DataTypes.DoubleType, false),
          DataTypes.createStructField("timestamp", DataTypes.TimestampType, false)
          ))

        // Enrich our data
        val staticDf = SensorProducer
          .defaultTemperatureSensors
          .map(_.head._1)
          .toSeq.toDF()

        // Create the spark query
        val query = df.selectExpr("CAST(value AS STRING) as data")
          .select(functions.from_json(functions.col("data"),schema).as("json"))
          .select("json.*")

          // map json data to our case class, we could use it for easier processing
          // and type safety etc as get back a dataset.
          .as(Encoders.bean(classOf[SensorData[Double]]))
          // select columns we want here and use df operations to group data
          .select(unix_timestamp($"timestamp", "yyyy-MM-dd'T'hh:mm:ss.mmm'Z'").cast(TimestampType).as("eventTime"),
           $"sensorID",
            $"value"
          )
          .join(staticDf, Seq("sensorID"))
          // Allow data x minutes older than current max event time, default: 1 minute
          .withWatermark("eventTime", s"${config.eventTime} minutes")
          // Window duration and Slide duration, defaults 1 minute each
          .groupBy(
            window($"eventTime", s"${config.windowDuration} minutes", s"${config.slideDuration} minutes"),
            $"sensorID", $"Location.name".as("Sensor location name"))
          .count()
          .writeStream
          .format("console")
          // Every n seconds we will update the complete output
          .trigger(Trigger.ProcessingTime(config.triggerTime.seconds))
          .outputMode(OutputMode.Complete)
          .start()

        // block until error or termination
        query.awaitTermination()
      case None =>
    }
  }
}
