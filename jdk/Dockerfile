FROM dev/base:1.0 

MAINTAINER rstockman <ross@rstockman.org>

RUN apt-get update
RUN apt-get install -y git 
RUN apt-get install -y default-jdk 
RUN apt-get install -y maven 
RUN apt-get install -y scala 
RUN apt-get install -y groovy 
RUN apt-get install -y ant 
RUN apt-get install -y gradle

ENV JAVA_HOME=/usr/lib/jvm/default-java \
    PATH=$PATH:$JAVA_HOME/bin

