package spark.streaming.examples

import org.apache.spark.sql.types.{DataTypes, StructField, TimestampType}
import org.apache.spark.sql.{Encoders, SparkSession, functions}
import org.apache.spark.sql.functions.window
import org.apache.spark.sql.functions.unix_timestamp
import org.apache.spark.sql.streaming.{OutputMode, Trigger}

case class SensorAnalyticsConfig(
    checkpointDirectory: String= "",
    outputDirectory: String = "",
    topic: String = "",
    bootstrapServers: String = ""
  )

case class Data(key: String, value: String)

/**
  * Uses structured streaming to copy data of the form (string, string) from
  * Kafka to HDFS. Checkpointing for the driver and the streams is enabled.
  */
object SensorAnalytics {
  def main(args: Array[String]): Unit = {
    val appName="KafkaToHdfsWithCheckpointing"
    val parser = new scopt.OptionParser[SensorAnalyticsConfig](appName) {
      help("help").text("prints this usage text")
      opt[String]('o', "checkpointDirectory").required().valueName("<dir>")
        .action( (x, c) =>
          c.copy(checkpointDirectory = x) ).text(s"Checkpoint directory.")
      opt[String]('o', "outputDirectory").required().valueName("<dir>")
        .action( (x, c) =>
          c.copy(outputDirectory = x) ).text(s"The directory to store the output data.")
      opt[String]('o', "topic").required().valueName("<topic>")
        .action( (x, c) =>
          c.copy(topic = x) ).text(s"Kafka topic to to get the data from.")
      opt[String]('o', "bootstrapServers").required().valueName("<servers>")
        .action( (x, c) =>
          c.copy(bootstrapServers = x) ).text(s"Kafka servers string.")
    }

    val conf = parser.parse(args, SensorAnalyticsConfig())

    conf match {
      case Some(config) =>

        Util.setStreamingLogLevels()

        val spark = SparkSession
          .builder
          .appName("Sensor Streaming Analytics.")
          .getOrCreate()

        import spark.implicits._

        val df = spark
          .readStream
          .format("kafka")
          .option("checkpointLocation", config.checkpointDirectory + "_read")
          .option("kafka.bootstrap.servers", config.bootstrapServers)
          .option("subscribe", config.topic)
          .option("startingOffsets", "earliest")
          .load()

        val schema = DataTypes.createStructType(Array[StructField] (
          DataTypes.createStructField("sensorID", DataTypes.StringType, false),
          DataTypes.createStructField("value", DataTypes.DoubleType, false),
          DataTypes.createStructField("timestamp", DataTypes.TimestampType, false)
          ))

        import scala.concurrent.duration._
        val query = df.selectExpr("CAST(value AS STRING) as data")
          .select(functions.from_json(functions.col("data"),schema).as("json"))
          .select("json.*")
          .as(Encoders.bean(classOf[SensorData[Double]]))
          .select(unix_timestamp($"timestamp", "yyyy-MM-dd'T'hh:mm:ss.mmm'Z'").cast(TimestampType).as("eventTime"),
           $"sensorID",
            $"value"
          )
          .withWatermark("eventTime", "1 minutes")
          .groupBy(
            window($"eventTime", "1 minutes", "1 minutes"),
            $"sensorID")
          .count()
          .writeStream
          .format("console")
          .trigger(Trigger.ProcessingTime(4.seconds))
          .outputMode(OutputMode.Complete)
          .start()

        query.awaitTermination()
      case None =>
    }
  }
}
