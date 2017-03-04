
# https://hub.docker.com/_/mongo/

# build image
# docker build -t mongo-client .

# connect to mongo-server
# docker run -it --link mongo-server -p 8000:8000 -p 5858:5858 -v $(pwd):/usr/src/app mongo-client /bin/bash

