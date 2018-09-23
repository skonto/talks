package com.github.skonto

import java.util.concurrent.TimeUnit

import smile.classification._
import smile.data.AttributeDataset
import smile.{data, read}

class RForestTest {
  def runModel(path: String = "src/main/resources/iris.arff"): Unit = {
    val data: AttributeDataset = read.arff(path, 4)
    val (x, y) = data.unzipInt
    val rf = RForestTest.time{ randomForest(x, y) }

    println(s"Error = ${rf.error}")
    (0 to x.size-1).foreach{ i: Int =>
      println(RForestTest.time {
        rf.predict(x(i))
      })
    }
  }
}

object RForestTest {
  def main(args: Array[String]): Unit = {
    val rf = new RForestTest()
    if(args.length == 1){
      rf.runModel(args(0))
    } else {
      rf.runModel()
    }
  }

  def time[R](block: => R): R = {
    val t0 = System.nanoTime()
    val result = block
    val t1 = System.nanoTime()
    println("Elapsed time: " + (t1 - t0)/1000000.0 + "ms")
    result
  }
}
