# Dart SDK

FROM  ubuntu:trusty

MAINTAINER  Raphael Adam <raphael.adam@workiva.com>

LABEL Description="This image contains the Dart SDK"

ENV SDK_VERSION 1.13.2
ENV PATH $PATH:/usr/lib/dart/bin

RUN apt-get update && apt-get install -y \
    git \
    ssh \
    unzip \
    wget \
  && apt-get clean

RUN wget https://storage.googleapis.com/dart-archive/channels/stable/release/$SDK_VERSION/sdk/dartsdk-linux-x64-release.zip \
  && unzip dartsdk-linux-x64-release.zip \
  && cp dart-sdk/* /usr/local -r \
  && rm -rf dartsdk-linux-x64-release.zip
