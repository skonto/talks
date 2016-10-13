package voxxeddays.streaming

import org.apache.spark.sql.SparkSession
import org.apache.spark.sql.types.{DoubleType, StringType, StructField, StructType}
import voxxeddays.streaming.sensor.SensorData

object StructuredStreamingFindMean {

  val dataPath = "/tmp/data"
  val writePath = "/tmp/max"

  private def generateData() = {
    val data = Array("id1,1", "id2,2", "id2,3" , "id1,-1", "id3,2000")
    Utils.deleteFile(dataPath)
    Utils.printArrayToFile(dataPath, data)
  }

  def main(args: Array[String]): Unit = {
    val checkpointPath = s"/home/${System.getProperty("user.name")}/structured_checkpoint"

    val spark = SparkSession
      .builder
      .appName("StructuredSensorData")
      .master("local[*]")
      .getOrCreate()

    spark.sparkContext.setLogLevel("Error")

    import spark.implicits._

    // create data
    generateData()

    // provide a schema
    val schema = StructType(Array(
      StructField("sensorId", StringType, true),
      StructField("sensorValue", DoubleType, true)))

    // Create a DataFrame representing the file lines
    val lines = spark.readStream
      .schema(schema)
      .format("csv")
      .load(dataPath)

    // Create tmp view of data
    val tmpTable = lines.createOrReplaceTempView("readings")

    val mean = lines.as[SensorData]
      .filter(_.sensorValue > 0)
      .groupBy("sensorId")
      .mean()

    mean.writeStream
      .format("console")
      .outputMode("complete")
//      .option("checkpointLocation", checkpointPath) // not supported yet
      .start()
      .awaitTermination()
  }
}
