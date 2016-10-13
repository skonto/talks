package voxxeddays.streaming.sensor

import java.io.PrintStream
import java.net.{InetAddress, ServerSocket, Socket}

import scala.util.Random

class SensorServer(host: String = "localhost", port: Int = 9001, waitTime: Int = 1000) extends Thread {
  var toRun = true
  val random = Random
  override def run(): Unit = {

    val server = new ServerSocket(port, 0, InetAddress.getByName(host))
    while (toRun) {
      var s: Socket = null
      try {
        s = server.accept()
        val out = new PrintStream(s.getOutputStream())
        while(toRun) {
          val reading = random.nextInt(100)
          println(s"New Data:$reading")
          out.println(reading)
          out.flush()
          Thread.sleep(waitTime)
        }
      } catch {
        case ie: InterruptedException => ie.printStackTrace(); toRun = false
        case e: Exception => e.printStackTrace(); toRun = false
      }
      s.close()
    }
  }
}