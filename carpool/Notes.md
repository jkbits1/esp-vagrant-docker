# cd /var
# mkdir VM_share 
# sudo mount -t vboxsf c/users VM_share
# cd VM_share/Jon/Documents/GitHub/esp-vagrant-docker/carpool/

# build image
# docker build -t carpool .

# in shared folders, go to gh carpool backend on host

# useful tips here
# http://ralfw.de/2016/08/get-elm-up-and-running/
#
# using postgres docker machine
# docker run -it --link cp-pg-svr -p 8000:8000 -v $(pwd):/usr/src/app carpool /bin/bash

# cd /usr/src/app/

# docker exec -u 0 -it cont-id /bin/bash

curl -X POST localhost:8000/driver

export PGHOST=ip
export PGUSER=username
export PGDATABASE=dbname
export PGPASSWORD=pwd
export PGPORT=5432

aws - t2.micro

export PORT=8000
export PGHOST=$CP_PG_SVR_PORT_5432_TCP_ADDR
export PGUSER=postgres, export PGUSER=carpool_web
export PGPASSWORD=$CP_PG_SVR_ENV_POSTGRES_PASSWORD
export PGDATABASE=carpool.dev

cd /opt/carpool/web
cd v1.1/nodeAppPostPg/
tail, head cp_web_log
cat cp_web_log | grep -i "insert failed:" > /home/jon.kelly/issues2.txt
cat issues2.txt | grep FirstName
