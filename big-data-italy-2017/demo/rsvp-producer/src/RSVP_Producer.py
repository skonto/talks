import argparse
import json
import requests
import os
from os import sys
from confluent_kafka import Producer
from pprint import pprint

def produce_rsvps(bootstrap_servers, topic):
    """Write full rsvp json objects to a kafka topic"""
    rsvps_stream = requests.get('http://stream.meetup.com/2/rsvps', stream=True)
    kafka_producer = Producer({'bootstrap.servers': bootstrap_servers, 'queue.buffering.max.ms': 10})
    while True:
        try:
            for raw_rsvp in rsvps_stream.iter_lines():
                if raw_rsvp:
                    rsvp = json.loads(raw_rsvp)
                    if rsvp["response"] == "yes":
                        kafka_producer.produce(topic, json.dumps(rsvp).encode('utf-8'))
        except requests.exceptions.ChunkedEncodingError as e:
            print e
            break
        except:
            print "unexpected error"
            raise
    kafka_producer.flush()

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--bootstrap-servers", help="A list of bootstrap servers for kafka.")
    parser.add_argument("--topic", help="Topic to write to.")

    args = parser.parse_args()
    b_servers = ""
    topic = ""

    if not args.bootstrap_servers:
        b_servers = os.getenv("RSVP_KAFKA_BOOTSTRAP_SERVERS", "localhost:9092")
    else:
        b_servers = args.bootstrap_servers

    if not args.topic:
        topic = os.getenv("RSVP_KAFKA_TOPIC", "rsvp_topic")
    else:
        topic = args.topic

    print b_servers
    print topic

    produce_rsvps(b_servers, topic)

if __name__ == '__main__':
  main()
