FROM dev/jdk

MAINTAINER rstockman <ross@rstockman.org>

RUN useradd -ms /bin/bash developer &&\
    usermod -aG sudo developer &&\
    echo 'developer:developer' | chpasswd

ENV HOME=/home/developer

RUN apt-get update

RUN apt-get install -y libxext-dev libxrender-dev libxtst-dev

USER developer

RUN wget http://ftp.osuosl.org/pub/eclipse/technology/epp/downloads/release/2018-12/R/eclipse-committers-2018-12-R-linux-gtk-x86_64.tar.gz -O /home/developer/eclipse.tar.gz &&\
    tar -xzf /home/developer/eclipse.tar.gz -C /home/developer &&\
    rm /home/developer/eclipse.tar.gz

WORKDIR /home/developer

CMD /home/developer/eclipse/eclipse
