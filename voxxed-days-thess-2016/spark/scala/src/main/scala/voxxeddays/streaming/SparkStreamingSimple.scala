package voxxeddays.streaming

import org.apache.spark.SparkConf
import org.apache.spark.rdd.RDD
import org.apache.spark.streaming.Seconds
import org.apache.spark.streaming.StreamingContext

import voxxeddays.streaming.sensor.SensorServer

object SparkStreamingSimple {
  val batchDuration = 5
  val port = 9001
  val host = "localhost"

  def reportMax(rdd: RDD[String], windowType: String) = {
    if(!rdd.partitions.isEmpty) {
      val max = rdd.map(data => data.toInt).max()
      println(s"$windowType - data collected:${rdd.collect().mkString(",")}")
      println(s"$windowType - max is now...$max")
    }
  }

  def main(args: Array[String]): Unit = {
    val sConf = new SparkConf()

    val runtime = Runtime.getRuntime()
    val procs = runtime.availableProcessors()

    // create the streaming context
    sConf.setMaster(s"local[${procs-1}]").setAppName("SimpleStreaming")

    // create the streaming context
    val ssc = new StreamingContext(sConf, Seconds(batchDuration))
    ssc.sparkContext.setLogLevel("Error")

    val sensorStream = ssc.socketTextStream(host, port)

    // create tumbling window
    sensorStream.foreachRDD (rdd => reportMax(rdd, "tumbling"))

    // create sliding window
    val slidingSensorStream = sensorStream.window(Seconds(10), Seconds(5))

    slidingSensorStream.foreachRDD(rdd => reportMax(rdd, "sliding"))

    // Create a data server with 1000 ms - 1 sec delay between data ingestion
    val st = new SensorServer(host, port, 1000)

    // start our server
    st.start()
    sys.addShutdownHook {
      st.toRun = false
      st.join()
    }
    Thread.sleep(1000) // wait for streaming to start

    ssc.start() // start the streaming context
    ssc.awaitTermination() // block until it finishes or error occurs
  }
}
