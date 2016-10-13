package voxxeddays.streaming

import java.io.File

/**Helper methods for file manipulation*/
object Utils {

  def printArrayToFile(file: String, data: Array[String]): Unit = {
    Utils.printToFile(new File(file)) { p =>
      data.foreach(p.println)
    }
  }

  def printToFile(f: java.io.File)(op: java.io.PrintWriter => Unit) {
    val p = new java.io.PrintWriter(f)
    try { op(p) } finally { p.close() }
  }

  def deleteFile(path: String) = {
    val fileTemp = new File(path)
    if (fileTemp.exists) {
      fileTemp.delete()
    }
  }

  def deleteDir(path: String) = {
    def deleteRec(file: File): Unit = {
      if (file.isDirectory)
        file.listFiles.foreach(f => deleteRec(f))
      file.delete()
    }
    deleteRec(new File(path))
  }
}
