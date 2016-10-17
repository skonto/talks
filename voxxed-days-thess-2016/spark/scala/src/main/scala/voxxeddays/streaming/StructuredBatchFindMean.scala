package voxxeddays.streaming

import org.apache.spark.sql.SparkSession
import org.apache.spark.sql.types.{DoubleType, StringType, StructField, StructType}

import voxxeddays.streaming.sensor.SensorData

object StructuredBatchFindMean {

  val dataPath = "/tmp/data"
  val writePath = "/tmp/mean"

  private def generateData() = {
    val data = Array("id1,1", "id2,2", "id2,3" , "id1,-1", "id3,2000")
    Utils.deleteFile(dataPath)
    Utils.deleteDir(writePath)
    Utils.printArrayToFile(dataPath, data)
  }

  def main(args: Array[String]): Unit = {

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

    val lines = spark.read
      .schema(schema)
      .format("csv")
      .load(dataPath)

    // Create tmp view of data
    val tmpTable = lines.createOrReplaceTempView("readings")

    val mean = lines.as[SensorData]
      .filter(_.sensorValue > 0)
      .groupBy("sensorId")
      .mean()

    mean.repartition(1).write
      .format("csv")
      .save(writePath)

    spark.stop()
  }
}

