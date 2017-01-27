FROM node:6.6.0
# FROM node:4-onbuild

EXPOSE 8000
# EXPOSE 443
EXPOSE 8080
EXPOSE 5858

RUN mkdir -p /usr/src/elm-app
# WORKDIR /usr/src/elm-app

# npm view elm versions

# RUN npm install -g elm@0.15.1
# RUN npm install -g elm@0.17.1
RUN npm install -g elm@0.18.0

RUN apt-get update
RUN apt-get install -y vim-tiny

# https://hub.docker.com/_/node/
# https://github.com/nodejs/docker-node

# go to gh docker elm folder :
# mount shared folder, go to this folder
# (see Notes.md)
