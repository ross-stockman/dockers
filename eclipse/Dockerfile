FROM dev/jdk:1.0 

MAINTAINER rstockman <ross@rstockman.org>

RUN apt-get update 

RUN apt-get install -y libxext-dev libxrender-dev libxtst-dev

USER developer

RUN wget http://mirror.csclub.uwaterloo.ca/eclipse/technology/epp/downloads/release/2018-09/R/eclipse-java-2018-09-linux-gtk-x86_64.tar.gz -O /home/developer/eclipse.tar.gz &&\
    tar -xzf /home/developer/eclipse.tar.gz -C /home/developer &&\
    rm /home/developer/eclipse.tar.gz

WORKDIR /home/developer

CMD /home/developer/eclipse/eclipse
