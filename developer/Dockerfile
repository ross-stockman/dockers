FROM ubuntu:latest

MAINTAINER rstockman <ross@rstockman.org>

RUN apt-get update &&\
    apt-get install -y sudo vim wget curl unzip libxml2-utils tree git htop build-essential openssl openssh-server software-properties-common

RUN useradd -ms /bin/bash developer &&\
    usermod -aG sudo developer &&\
    echo 'developer:developer' | chpasswd

ENV HOME=/home/developer

