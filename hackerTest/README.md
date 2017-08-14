# hacker tests Docker file

## build image
docker build -t hacker-test .

## run this from the host folder containing the hacker tests

### using postgres docker machine
docker run -it -p 8000:8000 -v $(pwd):/usr/src/app hacker-test /bin/bash

docker exec -it container-id /bin/bash

## in the shell :     
cd /usr/src/app/nodeAppPostPg

## execute the script to setup env vars

npm install, then npm run
