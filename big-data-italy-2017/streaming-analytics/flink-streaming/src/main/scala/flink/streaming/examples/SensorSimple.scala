package flink.streaming.examples

import org.apache.flink.api.scala._
import org.apache.flink.streaming.api.TimeCharacteristic
import org.apache.flink.streaming.api.scala.StreamExecutionEnvironment
import org.apache.flink.streaming.api.scala.function.WindowFunction
import org.apache.flink.streaming.api.windowing.time.Time
import org.apache.flink.streaming.api.windowing.windows.TimeWindow
import org.apache.flink.util.Collector
import org.apache.log4j.Logger

case class SensorSimpleConfig(
    allowedLateness: Long = 1000, // millis
    windowDuration: Long = 10, // millis
    numberOfSensors: Int = 2,
    numberOfElements: Int = 100,
    watermarkTag: Int =10,
    sourceElementDelay: Long = 10 //millis
  )

object SensorSimple {
  def main(args: Array[String]): Unit = {
    val env = StreamExecutionEnvironment.getExecutionEnvironment
    // set default env parallelism for all operators
    env.setParallelism(2)
    env.setStreamTimeCharacteristic(TimeCharacteristic.EventTime)

    val parser = new scopt.OptionParser[SensorSimpleConfig]("SensorSimple") {
      help("help").text("prints this usage text")
      opt[Long]("allowedLateness").optional().valueName("<allowedLateness>")
        .action( (x, c) =>
          c.copy(allowedLateness = x) ).text(s"allowedLateness.")
      opt[Long]("windowDuration").optional().valueName("<windowDuration>")
        .action( (x, c) =>
          c.copy(windowDuration = x) ).text(s"windowDuration.")
      opt[Int]("numberOfSensors").optional().valueName("<numberOfSensors>")
        .action( (x, c) =>
          c.copy(numberOfSensors = x) ).text(s"numberOfSensors.")
      opt[Int]("numberOfElements").optional().valueName("<numberOfElements>")
        .action( (x, c) =>
          c.copy(numberOfElements = x) ).text(s"numberOfElements.")
      opt[Int]("watermarkTag").optional().valueName("<watermarkTag>")
        .action( (x, c) =>
          c.copy(watermarkTag = x) ).text(s"watermarkTag.")
      opt[Long]("sourceElementDelay").optional().valueName("<sourceElementDelay>")
        .action( (x, c) =>
          c.copy(sourceElementDelay = x) ).text(s"sourceElementDelay.")
    }

    val conf = parser.parse(args, SensorSimpleConfig())

    conf match {
      case Some(config) =>
        val numberOfSensors = config.numberOfSensors
        val watermarkTag = config.watermarkTag // after how many elements to emit a wm
        val numberOfElements = config.numberOfElements
        val windowDuration = config.windowDuration
        val allowedLateness = config.allowedLateness
        val sourceElementDelay = config.sourceElementDelay

        val dataSource = new SensorDataSource(TemperatureSensor, numberOfSensors, watermarkTag, sourceElementDelay, numberOfElements)
        val sensorDataStream = env.addSource(dataSource)

        sensorDataStream.writeAsText("inputData.txt")

        val windowedKeyed = sensorDataStream
          .keyBy(data => data.sensorId)
          .timeWindow(Time.milliseconds(windowDuration)) // tumbling window
          .allowedLateness(Time.milliseconds(allowedLateness))

        sensorDataStream
          .keyBy(data => data.sensorId)
          .writeAsText("inputDataKeyed.txt")

        windowedKeyed.max("value")
          .writeAsText("outputMaxValue.txt")

        windowedKeyed.apply(new SensorAverage())
          .writeAsText("outputAverage.txt")

        env.execute("Sensor Data Simple Statistics")
      case None =>
    }
  }
}

class SensorAverage extends WindowFunction[SensorData, SensorData, String, TimeWindow] {
  def apply(key: String, window: TimeWindow, input: Iterable[SensorData], out: Collector[SensorData]): Unit = {
   Logger.getRootLogger.info(s"data:${input.mkString(",")}" + s"size:${input.size}")
    if (input.nonEmpty) {
      val average = input.map(_.value).sum / input.size
      out.collect(input.head.copy(value = average))
    }
  }
}
