import sbtassembly.MergeStrategy

name := "flink-streaming-examples"

version := "0.0.1-SNAPSHOT"

scalaVersion := "2.11.8"

// Java then Scala for main sources
compileOrder in Compile := CompileOrder.JavaThenScala

// allow circular dependencies for test sources
compileOrder in Test := CompileOrder.Mixed

javacOptions += "-g:none"

scalacOptions ++= Seq(
  "-deprecation",
  "-encoding", "UTF-8",
  "-feature",
  "-language:existentials",
  "-language:higherKinds",
  "-language:implicitConversions",
  "-language:experimental.macros",
  "-language:postfixOps",
  "-unchecked",
  "-Xfatal-warnings",
  "-Xlint",
  "-Yinline-warnings",
  "-Yno-adapted-args",
  "-Ywarn-dead-code",
  "-Ywarn-numeric-widen",
  "-Ywarn-unused-import",
  "-Xfuture")

val flinkVersion = "1.3.2"

libraryDependencies ++= Seq(
  "org.apache.flink"     %%   "flink-scala"                    % flinkVersion % "provided",
  "org.apache.flink"     %%   "flink-streaming-scala"          % flinkVersion % "provided",
  "log4j"                %    "log4j"                          % "1.2.17",
  "com.github.scopt"     %%   "scopt"                          % "3.5.0"
)


target in assembly := target.value

assemblyOption in assembly := (assemblyOption in assembly).value.copy(includeScala = false)

assemblyMergeStrategy in assembly := {
  case PathList("META-INF", "MANIFEST.MF") => MergeStrategy.discard
  case PathList("META-INF", xs @ _*) => MergeStrategy.last
  case PathList("META-INF", "io.netty.versions.properties") => MergeStrategy.last
  case x =>
    val oldStrategy = (assemblyMergeStrategy in assembly).value
    oldStrategy(x)
}
