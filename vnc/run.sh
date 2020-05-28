#!/bin/bash
docker run -it -e VNC_PW=password --user 0 -p 5900-6900:5901 -p 6911:6901 consol/centos-xfce-vnc

#docker run -it -p 6911:6901 \
#    -e VNC_VIEW_ONLY=true \
#    -e VNC_RESOLUTION=800x600 \
#    --user $(id -u):$(id -g) consol/ubuntu-xfce-vnc
