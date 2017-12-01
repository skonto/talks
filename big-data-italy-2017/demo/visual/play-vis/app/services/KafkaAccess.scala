package services
import java.util.UUID
import javax.inject.{Inject, Singleton}

import akka.kafka.scaladsl.Consumer
import akka.kafka.{ConsumerSettings, Subscriptions}
import akka.stream.scaladsl.Source
import org.apache.kafka.clients.consumer.{ConsumerConfig, ConsumerRecord}
import org.apache.kafka.common.serialization.StringDeserializer
import play.api.Configuration
trait KafkaAccess {
def source(topic: String): Source[ConsumerRecord[String, String], _]
}

@Singleton
class KafkaAccessUtils @Inject() (configuration: Configuration) extends KafkaAccess {
def source(topic: String): Source[ConsumerRecord[String, String], _] = {
     val deserializer = new StringDeserializer()
     val kafkaUrl = "localhost:9092"

     val config = configuration.getOptional[Configuration]("akka.kafka.consumer").getOrElse(Configuration.empty)
    val consumerSettings =  ConsumerSettings(config.underlying, deserializer, deserializer)
        .withBootstrapServers(kafkaUrl)
        .withGroupId(UUID.randomUUID().toString)
        .withProperty(ConsumerConfig.AUTO_OFFSET_RESET_CONFIG, "latest")
        .withProperty(ConsumerConfig.ENABLE_AUTO_COMMIT_CONFIG, "true")
        val subscriptions = Subscriptions.topics(topic)
    Consumer.plainSource(consumerSettings, subscriptions)
  }
}
