# cd /var
# mkdir VM_share 
# sudo mount -t vboxsf c/users VM_share
# cd VM_share/Jon/Documents/GitHub/backend2/db/

# SERVER - with db
# docker run --name cp-pg-svr -p 5432:5432 -e POSTGRES_PASSWORD=pwd -d cp-svr:db

# SERVER - clean
# docker run --name cp-pg-svr -p 5432:5432 -e POSTGRES_PASSWORD=pwd -d postgres:9.5.4

# save db state for later - doesn't work ?
# docker commit -m " pg-carpool-db" 808 cp-pg-svr

# log in to server as postgres (psql needs this account)
# docker exec -it -u postgres e06 /bin/bash

# in shared folders, go to gh carpool backend on host

# CLIENT
# docker run -it --link cp-pg-svr -v $(pwd):/usr/src/app postgres:9.5.4 /bin/bash
# 
# compose
# docker run -it --link compose_cp-pg-svr2_1 -v $(pwd):/usr/src/app postgres:9.5.4 /bin/bash

# cd /usr/src/app/

# psql -h $CP_PG_SVR_PORT_5432_TCP_ADDR -U postgres
# create database carpool;

# connect to carpool for queries
# \c carpool

# \password carpool_web
# \c carpool carpool_web

# connect directly to carpool db
# psql -h $CP_PG_SVR_PORT_5432_TCP_ADDR -U postgres carpool 

# create roles and schemas in carpool db
# psql -h $CP_PG_SVR_PORT_5432_TCP_ADDR -U postgres carpool -a -f ./carpool_roles.sql
# psql -h $CP_PG_SVR_PORT_5432_TCP_ADDR -U postgres carpool -a -f ./carpool_schema.sql

# pg_restore -h $CP_PG_SVR_PORT_5432_TCP_ADDR -U postgres -d carpool -a ./carpool_static_data.dat

 cat ../nodeAppPostPg/cp_web_log | ./node_modules/bunyan/bin/bunyan -j