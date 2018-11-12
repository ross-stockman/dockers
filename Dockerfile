FROM ubuntu:latest

MAINTAINER rstockman <ross@rstockman.org>

RUN apt-get update &&\
    apt-get install -y sudo vim wget curl unzip libxml2-utils tree git htop build-essential openssl openssh-server

RUN useradd -ms /bin/bash developer &&\
    usermod -aG sudo developer &&\
    echo 'developer:developer' | chpasswd

RUN apt-get install -y git default-jdk maven scala ant gradle

RUN apt-get install -y libxext-dev libxrender-dev libxtst-dev

ENV HOME=/home/developer \
    JAVA_HOME=/usr/lib/jvm/default-java \
    PATH=$PATH:$JAVA_HOME/bin

USER developer

RUN wget http://mirror.csclub.uwaterloo.ca/eclipse/technology/epp/downloads/release/2018-09/R/eclipse-java-2018-09-linux-gtk-x86_64.tar.gz -O /home/developer/eclipse.tar.gz &&\
    tar -xzf /home/developer/eclipse.tar.gz -C /home/developer &&\
    rm /home/developer/eclipse.tar.gz

WORKDIR /home/developer

CMD /home/developer/eclipse/eclipse
