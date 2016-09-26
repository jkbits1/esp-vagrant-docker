FROM node:6.6.0

EXPOSE 8000

RUN apt-get update

# for network testing 
RUN apt-get install -y netcat

# for editing 
RUN apt-get install -y vim-tiny


#  npm install pg --save --no-bin-links

# for dev
# npm install -g nodemon

# yeoman
# https://github.com/jedireza/generator-hapi-style
# RUN npm install -g yo
# RUN npm install -g generator-hapi-style

# loopback
# https://docs.strongloop.com/display/public/LB/LoopBack+core+concepts
# https://docs.strongloop.com/display/public/LB/Create+a+simple+API
# https://docs.strongloop.com/display/public/LB/Discovering+models+from+relational+databases

# npm install -g strongloop

# in carpoolBack folder
# npm install loopback-connector-postgresql --save


# https://nodejs.org/en/docs/guides/nodejs-docker-webapp/

# https://hub.docker.com/_/node/
# https://github.com/nodejs/docker-node

#
# Security, Best Practices #
# 
# https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md
# https://github.com/docker/docker-bench-security

# RUN git clone https:/github.com/joyent/node

# from https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
# sudo - E before bash removed
# RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
# RUN apt-get install -y nodejs

# go to gh docker node folder :
# mount shared folder, go to this folder
# (see Notes.md)

# build image
# docker build -t node-server .

# https://github.com/nodejs/docker-node

# docker run -ti -p 8000:8000 node-server /bin/bash

# useful tips here
# http://ralfw.de/2016/08/get-elm-up-and-running/
# docker run -ti -p 8000:8000 -v $(pwd):/tmp/node-app node-server /bin/bash

# cd /tmp/node-app/

# node simple.js 8000 test.txt