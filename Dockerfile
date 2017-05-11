FROM ubuntu:16.04
MAINTAINER Mukul Sati

# Install
RUN apt-get update
RUN apt-get install -y cmake
RUN apt-get install -y software-properties-common 
RUN apt-get install -y gcc
RUN apt-get install -y g++

RUN mkdir -p /src/
RUN mkdir -p /src/build/
WORKDIR /src/build/

COPY . /src/
RUN cmake ..
RUN make
RUN /src/build/HelloWorld
