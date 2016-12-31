# sudo mount /var ..., cd this folder

# https://docs.mongodb.com/getting-started/shell/insert/

# create mongo server
# docker run --name mongo-server -d mongo:3.4.1

# build client image (from Dockerfile)
# docker build -t mongo .

# connect client 
# NOTE: env var from https://hub.docker.com/_/mongo/ is missing "_SERVER", second line is correct
# docker run -it --link mongo-server mongo sh -c 'exec mongo "$MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017_TCP_PORT/test"'
# docker run -it --link mongo-server mongo sh -c 'exec mongo "$MONGO_SERVER_PORT_27017_TCP_ADDR:$MONGO_SERVER_PORT_27017_TCP_PORT/test"'
#
# docker run -it --link mongo-server -p 8000:8000 -v $(pwd):/usr/src/app mongo /bin/bash

# run from client
# exec mongo "$MONGO_SERVER_PORT_27017_TCP_ADDR:$MONGO_SERVER_PORT_27017_TCP_PORT/test"




