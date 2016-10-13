package voxxeddays.streaming

import org.apache.spark.rdd.RDD
import org.apache.spark.{SparkConf, SparkContext}

object RDDWordCountBatch {

  def main(args: Array[String]): Unit = {

    val sConf = new SparkConf()
    sConf.setMaster("local[*]").setAppName("Word Count")
    val sc = new SparkContext(sConf)
    sc.setLogLevel("Error")

    val text =
      """
        |But I must explain to you how all this mistaken idea of
        |denouncing pleasure and praising pain was born and I
        |will give you a complete account of the system, and
        |expound the actual teachings of the great explorer of the truth,
        |the master-builder of human happiness.
        |.....
        |But who has any right to find fault with a man who
        |chooses to enjoy a pleasure that has no annoying
        |consequences, or one who avoids a pain that produces no resultant pleasure?
      """.stripMargin

    val input: RDD[String] = sc.parallelize(text.split("\n")
      .map(_.replaceAll("""[\p{Punct}]""", "").toLowerCase)) // remove punctuation marks, lowercase
      .filter(!_.isEmpty) // remove empty

    // Split line to words
    val words: RDD[String] = input.flatMap(line => line.split(" "))

    // Transform words into tuples (word, count)
    val counts: RDD[(String, Int)] = words.map(word => (word, 1)).reduceByKey{case (x, y) => x + y}

    counts.foreach(println)

    sc.stop()
  }
}

