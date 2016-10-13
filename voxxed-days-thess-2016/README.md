# Spark Streaming Examples for VoxxedDays 2016

# Requirementes

Java and maven needed to be installed.

## Build
build as follows under scala directory:

```mvn clean install```

## Execute
Execute as follows:

```java -cp spark-voxxed-days-2016-0.0.1-fat.jar voxxeddays.streaming.RDDWordCountBatch```

Available main classes to run:

* RDDWordCountBatch
* SparkStreamingSimple
* SparkStreamingSimpleWithCheckPointing
* StructuredBatchFindMean
* StructuredStreamingFindMean

## Notes

Tested under Linux. Uses /tmp folder.

Creates two checkpoint dirs under:

/home/$user/checkpoint/

/home/$user/structured_checkpoint/

Important: Code is not production ready, only for demonstration purposes.
