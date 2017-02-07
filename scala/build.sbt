name          := "practice"
version       := "0.1"
scalaVersion  := "2.11.6"
scalacOptions := Seq("-unchecked", "-deprecation", "-encoding", "utf8")

libraryDependencies ++= {
  Seq(
    "org.specs2" %% "specs2-core" % "2.3.11" % "test"
  )
}
