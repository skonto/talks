
nohup ./bin/kafka-server-start.sh ./config/server.properties > ~/kafka/kafka.log 2>&1 &

./bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic test --from-beginning
./bin/kafka-topics.sh --zookeeper localhost:2181 --delete --topic test

```
{"sensorID":"Milano1","value":18.775013154142552,"timestamp":"2017-10-23T00:32:58.507Z"}

```

java -cp spark-streaming-examples-assembly-0.0.1-SNAPSHOT.jar  spark.streaming.examples.SensorProducer --topic test --bootstrapServers localhost:9092

./spark-submit --master local[*] --class spark.streaming.examples.SensorAnalytics spark-streaming-examples-assembly-0.0.1-SNAPSHOT.jar --bootstrapServers localhost:9092 --checkpointDirectory /tmp/check --outputDirectory /tmp --topic test

```
-------------------------------------------
Batch: 0
-------------------------------------------
+--------------------+--------+-----+                                           
|              window|sensorID|count|
+--------------------+--------+-----+
|[2017-10-23 03:44...| Milano1|   16|
|[2017-10-23 03:35...| Milano1|   60|
|[2017-10-23 03:34...| Milano1|   60|
|[2017-10-23 03:31...| Milano1|   60|
|[2017-10-23 03:32...| Milano1|   60|
|[2017-10-23 03:30...| Milano1|   60|
|[2017-10-23 03:29...| Milano1|   53|
|[2017-10-23 03:33...| Milano1|   60|
|[2017-10-23 03:36...| Milano1|   19|
|[2017-10-23 03:45...| Milano1|   44|
+--------------------+--------+-----+

```
