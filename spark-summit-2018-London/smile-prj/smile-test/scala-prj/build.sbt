name := "smile-test"

organization := "com.github.skonto"

version := "1.0-SNAPSHOT"

lazy val root = project in file(".")

scalaVersion := "2.12.6"

val sparkVersion = "2.3.1"

libraryDependencies ++= Seq(
 "com.github.haifengl" %% "smile-scala" % "1.5.1"
)


assemblyMergeStrategy in assembly := {
  case PathList("META-INF", xs @ _*) => MergeStrategy.discard
  case x => MergeStrategy.first
}
