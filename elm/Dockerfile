FROM node:4-onbuild

EXPOSE 8000
# EXPOSE 443

RUN mkdir -p /usr/src/elm-app
# WORKDIR /usr/src/elm-app

# npm view elm versions

# RUN npm install -g elm@0.15.1
RUN npm install -g elm@0.17.1

RUN apt-get update
RUN apt-get install -y vim-tiny

# https://hub.docker.com/_/node/
# https://github.com/nodejs/docker-node

# go to gh docker elm folder :
# mount shared folder, go to this folder
# (see Notes.md)

# build image
# docker build -t elm-server .

# run image with cmd line
# (probably want to do revised method below now)
# docker run -ti --rm --name elm-svr elm-server /bin/bash

# useful tips here
# http://ralfw.de/2016/08/get-elm-up-and-running/
# docker run -ti -p 8000:8000 -v $(pwd):/tmp/elm elm-server /bin/bash

# cd /tmp/elm/

# elm reactor -a 0.0.0.0

# from boot2docker
# curl 172.17.0.2:8000

# from host
# curl localhost:8000
# curl $(docker-machine ip default):8000

