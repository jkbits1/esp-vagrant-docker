# cd /var
# mkdir VM_share 
# sudo mount -t vboxsf c/users VM_share
# cd VM_share/Jon/Documents/GitHub/voteUSfrontend/


# HEY, some of this jekyll can WIPE folders !!!!


# useful
# https://hub.docker.com/r/grahamc/jekyll/
# docker run --rm -v $(pwd):/src -p 4000:4000 grahamc/jekyll serve -H 0.0.0.0 --watch --config _config-dev.yml
# docker run --rm -v $(pwd):/src -p 4000:4000 grahamc/jekyll serve -H 0.0.0.0
#
# docker run --name jekyll -v $(pwd):/usr/src/app -p 4000:4000 grahamc/jekyll build 

# https://samneirinck.com/2016/08/01/easy-jekyll-blogging-on-windows-using-docker/
# docker run --name jekyll -v $(pwd):/usr/src/app -p 4000:4000 jekyll/jekyll:pages

# in shared folders, go to gh carpool backend on host

# SERVER - clean (can use as client with sync'ed folders)
# docker run --name cp-pg-svr -p 5432:5432 -v $(pwd):/usr/src/app -e POSTGRES_PASSWORD=pwd -d postgres:9.5.4 

# SERVER - with db
# docker run --name cp-pg-svr -p 5432:5432 -e POSTGRES_PASSWORD=pwd -d cp-svr:db

# SERVER - clean 
# docker run --name cp-pg-svr -p 5432:5432 -e POSTGRES_PASSWORD=pwd -d postgres:9.5.4
#

# log in to server as postgres (psql needs this account)
# (avoids new machine just for psql client) 
#
# docker exec -it -u postgres e06 /bin/bash

# save db state for later - doesn't work ?
# docker commit -m " pg-carpool-db" 808 cp-pg-svr

# in shared folders, go to gh carpool backend on host

# CLIENT
# docker run -it --link cp-pg-svr -v $(pwd):/usr/src/app postgres:9.5.4 /bin/bash
# 
# compose
# docker run -it --link compose_cp-pg-svr2_1 -v $(pwd):/usr/src/app postgres:9.5.4 /bin/bash

# cd /usr/src/app/

# psql -h $CP_PG_SVR_PORT_5432_TCP_ADDR -U postgres
# create database carpool;
# create database "carpool.dev";

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

# from server
# psql "carpool.dev" -a -f ./carpool_roles.sql
# psql "carpool.dev" -a -f ./carpool_schema.sql
# pg_restore -d "carpool.dev" -a ./carpool_static_data.dat

 cat ../nodeAppPostPg/cp_web_log | ./node_modules/bunyan/bin/bunyan -j

# set user password
# alter user carpool_web with password '';


# git diff --no-index .\carpool_schema.sql .\schema-test.sql

# pg_dump -U postgres -s carpool.dev > schema-test.sql

