package spark.streaming.examples

import org.apache.spark.sql.{SparkSession, functions}
import org.apache.spark.sql.streaming.{OutputMode, Trigger}
import org.apache.spark.sql.internal.SQLConf.SHUFFLE_PARTITIONS

import scala.concurrent.duration._

case class RSVPAnalyticsConfig(
    topic: String = "",
    write_topic: String = "",
    bootstrapServers: String = "",
    checkpointDir: String = "/tmp/checkpoint",
    // average processing time of real data takes only 1.5s
    triggerTime: Long = 10, // secs
    windowDuration: Long = 1 // minutes
  )

case class Data(key: String, value: String)
case class CountryInfo(code: String)
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
  * --class spark.streaming.examples.MeetUpRSVPAnalytics spark-streaming-examples-assembly-0.0.1-SNAPSHOT.jar \
  * --bootstrapServers localhost:9092 --topic test
  *}</pre>
  *
  * 4) Use RSVP_Producer to feed data to the topic.
  *
  * 5) Examine data in the topic:
  *
  * <pre>
  * {@code
  * $./bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic test --from-beginning
  * }</pre>
  *
  * Form should be:
  * {
  * "group": {
  * "group_city": "Bethesda","group_lat": 38.98,
  * "group_urlname": "Bethesda-Martial-Arts-Meetup",
  * "group_name": "Bethesda Martial Arts Meetup",
  * "group_lon": -77.1,
  * "group_topics": [
  *   {
  *      "topic_name": "Self-Defense",
  *      "urlkey": "selfdefense"
  *    },
  *    {
  *      "topic_name": "Martial Arts",
  *      "urlkey": "martial"
  *    },
  *    {
  *      "topic_name": "Aikido",
  *      "urlkey": "aikido"
  *    },
  *    {
  *      "topic_name": "Taekwondo",
  *      "urlkey": "taekwondo"
  *    },
  *    {
  *      "topic_name": "Tae Kwon Do",
  *      "urlkey": "tae-kwon-do"
  *    },
  *    {
  *      "topic_name": "Recreational Sports",
  *      "urlkey": "recreational-sports"
  *    },
  *    {
  *      "topic_name": "Aikido Martial Arts",
  *      "urlkey": "aikido-martial-arts"
  *    }
  *  ],
  *  "group_state": "MD",
  *  "group_id": 24569801,
  *  "group_country": "us"
  *  },
  * "rsvp_id": 1701523372,
  * "visibility": "public",
  * "event": {
  *   "event_name": "Join us for workout classes.",
  *   "event_id": "trkfjnywqbpb",
  *   "event_url": "https://www.meetup.com/Bethesda-Martial-Arts-Meetup/events/243488897/",
  *   "time": 1513033200000
  *  },
  *   "member": {
  *   "member_name": "Mikhail Liskovykh",
  *   "member_id": 232665541
  * },
  * "guests": 0,
  * "mtime": 1512056112000,
  * "response": "yes"
  *}
  *
  *
  *  etc.
  */
object MeetUpRSVPAnalytics {

  // size of data is small
  final val numOfPartitions = 4

  def main(args: Array[String]): Unit = {
    val appName="RSVPAnalytics"
    val parser = new scopt.OptionParser[RSVPAnalyticsConfig](appName) {
      help("help").text("prints this usage text")
      opt[String]("topic").required().valueName("<topic>")
        .action( (x, c) =>
          c.copy(topic = x) ).text(s"Kafka topic to get the data from.")
      opt[String]("write-topic").required().valueName("<write-topic>")
        .action( (x, c) =>
          c.copy(write_topic = x) ).text(s"Kafka topic to to write data to.")
      opt[String]("checkpointDir").optional().valueName("<checkpointDir>")
        .action( (x, c) =>
          c.copy(checkpointDir = x) ).text(s"Checkpoint dir for kafka writes.")
      opt[String]("bootstrapServers").required().valueName("<servers>")
        .action( (x, c) =>
          c.copy(bootstrapServers = x) ).text(s"triggerTime.")
      opt[Long]("triggerTime").optional().valueName("<triggerTime>")
        .action( (x, c) =>
          c.copy(triggerTime = x) ).text(s"triggerTime.")
      opt[Long]("windowDuration").optional().valueName("<windowDuration")
        .action( (x, c) =>
          c.copy(windowDuration = x) ).text(s"windowDuration.")
    }

    val conf = parser.parse(args, RSVPAnalyticsConfig())

    conf match {
      case Some(config) =>
        // Set to WARN to avoid verbose output for the example code
        Util.setStreamingLogLevels()

        // Create the spark session
        val spark = SparkSession
          .builder
          .appName("Meetup RSVPs - Streaming Analytics.")
          .getOrCreate()

        // Override the defaul 200, otherwise we end up with empty partitions
        spark.sessionState.conf.setConf(SHUFFLE_PARTITIONS, numOfPartitions)

        import spark.implicits._
        import org.apache.spark.sql.types._
        import org.apache.spark.sql.functions.struct

        // Use maxOffsetsPerTrigger if you want to avoid all data read at once
        // when re-starting the app
        val df = spark
          .readStream
          .format("kafka")
          .option("kafka.bootstrap.servers", config.bootstrapServers)
          .option("subscribe", config.topic)
          .option("startingOffsets", "latest")
          .load()

        val schema = new StructType().add("group", new StructType().add("group_country", StringType))
        // Create the spark query
        val query = df.selectExpr("CAST(value AS STRING) as data")
          .select(functions.from_json(functions.col("data"),schema).as("json"))
          .select("json.group.group_country")
          // seen that in a large number of entries
          .filter('group_country isNotNull)
          .select('group_country as "code" )
          .as[CountryInfo]
          .map(country => CountryInfo(country.code.toUpperCase()))
          // we need to do this to remove empty partitions, along with the sql shuffling setting above
          .repartition(numOfPartitions, 'code)
          .groupBy('code)
          .count()
          .withColumn("value", struct('code, 'count))
          .select(functions.to_json('value).as("value"))
          .selectExpr("CAST(value AS STRING)")
          .writeStream
          .format("kafka")
          .option("kafka.bootstrap.servers", config.bootstrapServers)
          .option("topic", config.write_topic)
          .option("checkpointLocation", config.checkpointDir)
          // Every n seconds we will update the complete output
          .trigger(Trigger.ProcessingTime(config.triggerTime.seconds))
          .outputMode(OutputMode.Update())
          .start()

        // block until error or termination
        query.awaitTermination()
      case None =>
    }
  }
}
