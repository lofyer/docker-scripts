#!/bin/bash
mkdir /home/vscode
docker run -it -d -p 8080:8080 \
	-v /home/vscode:/home/coder/project \
	-u "$(id -u):$(id -g)" \
	codercom/code-server:latest
