FROM alpine:3.6

RUN   apk update \
 &&   apk add ca-certificates wget \
 &&   update-ca-certificates \
 &&   apk add build-base \
 &&   apk add python-dev \
 &&   apk add librdkafka \
 &&   apk add librdkafka-dev \
 &&   apk add --update python py-pip ca-certificates \
 &&   pip install --upgrade pip \
 &&   pip install requests \
 &&   pip install confluent_kafka \
 &&   wget -O /usr/local/bin/dumb-init http://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64 \
 &&   chmod +x /usr/local/bin/dumb-init

COPY src/RSVP_Producer.py run.sh  /

WORKDIR /
