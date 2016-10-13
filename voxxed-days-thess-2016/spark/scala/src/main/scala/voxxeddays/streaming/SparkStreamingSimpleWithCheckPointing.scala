package voxxeddays.streaming

import org.apache.spark.SparkConf
import org.apache.spark.rdd.RDD
import org.apache.spark.streaming.{Seconds, StreamingContext}

import voxxeddays.streaming.sensor.SensorServer

object  SparkStreamingSimpleWithCheckPointing {
  val batchDuration = 5
  val checkpointPath = s"/home/${System.getProperty("user.name")}/checkpoint"
  val port = 9001
  val host = "localhost"

  def reportMax(rdd: RDD[String], windowType: String) = {
    if(!rdd.partitions.isEmpty) {
      val max = rdd.map(data => data.toInt).max()
      println(s"$windowType - data collected:${rdd.collect().mkString(",")}")
      println(s"$windowType - max is now...$max")
    }
  }

  def main(args : Array[String]): Unit = {

    def functionToCreateContext(): StreamingContext = {
      val sConf = new SparkConf()
      val runtime = Runtime.getRuntime()
      val procs = runtime.availableProcessors()

      // create the streaming context
      sConf.setMaster(s"local[${procs-1}]").setAppName("SimpleStreamingCheckpointing")

      // create the streaming context
      val ssc = new StreamingContext(sConf, Seconds(batchDuration))
      ssc.sparkContext.setLogLevel("Error")

      ssc.checkpoint("/home/stavros/checkpoint")

      val sensorStream = ssc.socketTextStream("localhost", 9001)

      sensorStream.foreachRDD (rdd => reportMax(rdd, "tumbling"))

      // create sliding window
      val slidingSensorStream = sensorStream.window(Seconds(10), Seconds(5))

      slidingSensorStream.foreachRDD(rdd => reportMax(rdd, "sliding"))

      ssc.sparkContext.setLogLevel("Error")
      ssc
    }

    val context = StreamingContext.getOrCreate(checkpointPath, functionToCreateContext)

    val st = new SensorServer(host, port, 1000)
    st.start()
    sys.addShutdownHook {
      st.toRun = false
      st.join()
    }
    Thread.sleep(2000) // wait for streaming to start

    context.start()
    context.awaitTermination()
  }
}
