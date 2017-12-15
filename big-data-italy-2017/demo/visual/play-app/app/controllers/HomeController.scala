package controllers

import javax.inject._
import play.api.mvc._
import akka.stream.scaladsl.{Flow, Sink}
import services.KafkaAccess
import scala.util.{Failure, Success}
import scala.concurrent.Future
import play.api.Configuration

@Singleton
class HomeController @Inject() (config: Configuration, kafkaAccess: KafkaAccess) extends InjectedController {
  def index = Action { implicit request =>
    Ok(views.html.index(routes.HomeController.ws().webSocketURL()))
  }

  def ws = WebSocket.acceptOrResult[Any, String] { _ =>
   val topic = {
     val tmp = config.get[String]("read_topic")
     if( tmp == null) {
       "write_rsvp"
     } else{
       tmp
     }
   }
    val source = kafkaAccess.source(topic)
    val flow = Flow.fromSinkAndSource(Sink.ignore, source.map(_.value))
    Future.successful(Right(flow))
  }
}
