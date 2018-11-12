#!/bin/bash

xhost +

docker run --rm -d \
-e DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v ~/docker/maven_m2:/home/developer/.m2 \
-v ~/.gitconfig:/home/developer/.gitconfig \
-v ~/docker/git:/home/developer/git \
-v ~/docker/eclipse-workspace:/home/developer/eclipse-workspace \
--name eclipse \
dev/eclipse:1.0
