FROM ubuntu:latest

MAINTAINER rstockman <ross@rstockman.org>

RUN apt-get update &&\
    apt-get upgrade -y &&\
    apt-get dist-upgrade -y &&\
    apt-get install -y sudo vim wget curl unzip libxml2-utils tree git htop build-essential openssl openssh-server software-properties-common &&\
    apt-get autoremove -y &&\
    apt-get clean &&\
    apt-get autoclean -y

RUN git clone https://github.com/ross-stockman/dotfiles.git &&\
    sh /dotfiles/install.sh
