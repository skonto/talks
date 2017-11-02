package spark.streaming.examples

import java.time.ZonedDateTime
import java.time.format.DateTimeFormatter
import java.util.Properties

import org.apache.kafka.clients.producer.{KafkaProducer, ProducerRecord}
import play.api.libs.json.Json

case class KafkaSensorProducerConfig(
    topic: String = "",
    bootstrapServers: String = "",
    recordDelayTime: Long = 1000, // 1 sec per record to send to Kafka
    eventTimeDelayTime: Long = 1000, // 1 sec delay in eventime between records
    maxRecords: Int = SensorProducer.INFINITY_RECORDS
  )

case class SensorData[@specialized(Double) T](sensorID: String, value: T, timestamp: String)
case class TemperatureSensor(sensorId: String, location: Location)
case class Location(name: String = "", lat: Double, lon : Double)

/**
  * A Kafka producer for writing sensor data to a topic.
  */
object SensorProducer {
  final val INFINITY_RECORDS: Int = -1
  val random = scala.util.Random
  var currentEventTime: ZonedDateTime = _

  // Set default sensors and their starting temperature.
  // We generate values around that temperature to emulate a real scenario for a
  // short period of a day.
  val defaultTemperatureSensors = Array(
    Map(TemperatureSensor("cca60393-ab1d-4201-a00d-24d5b294238b", Location("Milano", 45.464204, 9.189982)) -> 18),
    Map(TemperatureSensor("bb4d49d8-3ae0-48da-ac90-69c69b63129b", Location("Rome", 41.902783, 12.496366)) -> 20))

  def main(args: Array[String]): Unit = {
    val parser = new scopt.OptionParser[KafkaSensorProducerConfig]("SensorProducer") {
      help("help").text("prints this usage text")
      opt[String]("topic").required().valueName("<topic>")
        .action( (x, c) =>
          c.copy(topic = x) ).text(s"Kafka topic to to get the data from.")
      opt[String]("bootstrapServers").required().valueName("<servers>")
        .action( (x, c) =>
          c.copy(bootstrapServers = x) ).text(s"Kafka servers string.")
      opt[Int]("maxRecords").optional().valueName("<maxRecords>")
        .action( (x, c) =>
          c.copy(maxRecords = x) ).text(s"maxRecords to generate.")
      opt[Long]("eventTimeDelayPeriod").optional().valueName("<eventTimeDelayPeriod>")
        .action( (x, c) =>
          c.copy(eventTimeDelayTime = x) ).text(s"eventTimeDelayPeriod.")
      opt[Long]("recordRate").optional().valueName("<recordRate>")
        .action( (x, c) =>
          c.copy(recordDelayTime = x) ).text(s"recordRate.")
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
        val recordRate = config.recordDelayTime
        val eventTimeDelayPeriod = config.eventTimeDelayTime

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
    val sensor = defaultTemperatureSensors(r)
    val sID = sensor.keys.head.sensorId
    val temp = sensor.values.head + random.nextDouble()

    if (Option(currentEventTime).isEmpty) {
      currentEventTime = ZonedDateTime.now()
    } else {
      currentEventTime = currentEventTime.plusNanos(eventTimeDelayPeriod*1000000)
    }

    // Create an iso timestamp
    // yyyy-MM-dd'T'hh:mm:ss.mmm'Z'
    val data = SensorData[Double](sID, temp, currentEventTime.format(DateTimeFormatter.ISO_INSTANT))
    val record = new ProducerRecord(topic, data.sensorID, Json.stringify(Json.toJson(data)))
    record
  }
}
