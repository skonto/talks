package spark.streaming.examples

import java.time.ZonedDateTime
import java.time.format.DateTimeFormatter
import java.util.Properties

import org.apache.kafka.clients.producer.{KafkaProducer, ProducerRecord}
import play.api.libs.json.Json

case class KafkaSensorProducerConfig(
    topic: String = "",
    bootstrapServers: String = "",
    recordRate: Long = 1000,
    eventTimeDelayPeriod: Long = 1000,
    maxRecords: Int = SensorProducer.INFINITY_RECORDS
  )

case class SensorData[@specialized(Double) T](sensorID: String, value: T, timestamp: String)
case class TemperatureSensor(sensorId: String, location: Location)

case class Location(name: String = "", lat: Double, lon : Double)

object SensorProducer {
  final val INFINITY_RECORDS: Int = -1
  val random = scala.util.Random
  var currentEventTime: ZonedDateTime = _

  val defaultTemperatureSensors = Array(
    Map(TemperatureSensor("Milano1", Location("Milano", 45.464204, 9.189982)) -> 18),
    Map(TemperatureSensor("Rome1", Location("Rome", 41.902783, 12.496366)) -> 20) ,
    Map(TemperatureSensor("Athens1", Location("Athens", 37.983810, 23.727539)) -> 25))

  def main(args: Array[String]): Unit = {
    val parser = new scopt.OptionParser[KafkaSensorProducerConfig]("SensorProducer") {
      help("help").text("prints this usage text")
      opt[String]('o', "topic").required().valueName("<topic>")
        .action( (x, c) =>
          c.copy(topic = x) ).text(s"Kafka topic to to get the data from.")
      opt[String]('o', "bootstrapServers").required().valueName("<servers>")
        .action( (x, c) =>
          c.copy(bootstrapServers = x) ).text(s"Kafka servers string.")
      opt[Int]('o', "maxRecords").optional().valueName("<maxRecords>")
        .action( (x, c) =>
          c.copy(maxRecords = x) ).text(s"maxRecords to generate.")
      opt[Long]('o', "eventTimeDelayPeriod").optional().valueName("<eventTimeDelayPeriod>")
        .action( (x, c) =>
          c.copy(eventTimeDelayPeriod = x) ).text(s"eventTimeDelayPeriod.")
      opt[Long]('o', "recordRate").optional().valueName("<recordRate>")
        .action( (x, c) =>
          c.copy(recordRate = x) ).text(s"recordRate.")
    }

    val conf = parser.parse(args, KafkaSensorProducerConfig())
    conf match {
      case Some(config) =>
        val  props = new Properties()
        props.put("bootstrap.servers", config.bootstrapServers)
        props.put("acks","1")
        props.put("key.serializer", "org.apache.kafka.common.serialization.StringSerializer")
        props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer")
        val producer = new KafkaProducer[String, String](props)
        val topic=config.topic
        val maxRecords = config.maxRecords
        val recordRate = config.recordRate
        val eventTimeDelayPeriod = config.eventTimeDelayPeriod

        if (maxRecords != INFINITY_RECORDS){
          require(maxRecords > 0)
          for(i<- 1 to maxRecords) {
            Thread.sleep(recordRate)
            producer.send(createRandomRecordFromDefaultSensors(topic, eventTimeDelayPeriod))
          }
        } else {
          while (true) {
            Thread.sleep(recordRate)
            producer.send(createRandomRecordFromDefaultSensors(topic, eventTimeDelayPeriod))
          }
        }
        producer.close()
      case None =>
    }
  }

  def createRandomRecordFromDefaultSensors(topic: String, eventTimeDelayPeriod: Long)
  : ProducerRecord[String, String] = {
    implicit val residentFormat = Json.format[SensorData[Double]]
    val r = random.nextInt(defaultTemperatureSensors.length)
    val sensor = defaultTemperatureSensors(0)
    val sID = sensor.keys.head.sensorId
    val temp = sensor.values.head + random.nextDouble()

    if (Option(currentEventTime).isEmpty) {
      currentEventTime = ZonedDateTime.now()
    } else {
      currentEventTime = currentEventTime.plusNanos(eventTimeDelayPeriod*1000000)
    }

    // yyyy-MM-dd'T'hh:mm:ss.mmm'Z'
    val data = SensorData[Double](sID, temp, currentEventTime.format(DateTimeFormatter.ISO_INSTANT))
    val record = new ProducerRecord(topic, data.sensorID, Json.stringify(Json.toJson(data)))
    record
  }
}
