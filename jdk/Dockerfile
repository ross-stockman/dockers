FROM dev/base

MAINTAINER rstockman <ross@rstockman.org>

RUN apt-get update
RUN apt-get install -y git
#RUN apt-get install -y default-jdk
RUN add-apt-repository ppa:openjdk-r/ppa -y && apt-get install openjdk-11-jdk -y
RUN apt-get install -y maven
RUN apt-get install -y scala
RUN apt-get install -y groovy
RUN apt-get install -y ant
RUN apt-get install -y gradle

RUN ln -fs /usr/lib/jvm/java-11-openjdk-amd64 /usr/lib/jvm/default-java
ENV JAVA_HOME /usr/lib/jvm/default-java
ENV PATH $PATH:$JAVA_HOME/bin

RUN wget -N -q https://downloads.sourceforge.net/project/jasypt/jasypt/jasypt%201.9.2/jasypt-1.9.2-dist.zip -O /opt/jasypt.zip &&\
    unzip /opt/jasypt.zip -d /opt &&\
    rm /opt/jasypt.zip

ENV JASYPT_HOME /opt/jasypt-1.9.2
ENV PATH $PATH:$JASYPT_HOME/bin

ENV jceenc Swo4dF!541111DiNNer
ENV jcealgorithm PBEWithMD5AndTripleDES

RUN chmod 775 $JASYPT_HOME/bin/encrypt.sh &&\
    chmod 775 $JASYPT_HOME/bin/decrypt.sh
