FROM hollisho/centos:latest

MAINTAINER Hollis Ho "he_wenzhi@126.com"

WORKDIR /usr/local/src

ADD https://github.com/hollisho/docker-java11/releases/download/1.0.0/jdk-11.0.8_linux-x64_bin.tar.gz .

RUN tar zxvf jdk-11.0.8_linux-x64_bin.tar.gz

RUN mv /usr/local/src/jdk-11.0.8 /usr/local/jdk11

ENV JAVA_HOME /usr/local/jdk11

ENV PATH $PATH:$JAVA_HOME/bin
