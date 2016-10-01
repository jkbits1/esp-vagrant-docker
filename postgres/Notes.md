# cd /var
# mkdir VM_share 
# sudo mount -t vboxsf c/users VM_share
# cd VM_share/Jon/Documents/GitHub/backend2/db/

# server
# docker run --name cp-pg-svr -p 5432:5432 -e POSTGRES_PASSWORD=pwd -d postgres:9.5.4


# in shared folders, go to gh carpool backend on host

# client
# docker run -it --link cp-pg-svr -v $(pwd):/usr/src/app postgres:9.5.4 /bin/bash

# cd /usr/src/app/

# psql -h $CP_PG_SVR_PORT_5432_TCP_ADDR -U postgres
# create database carpool;

# \c carpool

# connect directly to carpool db
# psql -h $CP_PG_SVR_PORT_5432_TCP_ADDR -U postgres carpool 

# psql -h $CP_PG_SVR_PORT_5432_TCP_ADDR -U postgres -a -f ./carpool_roles.sql
# psql -h $CP_PG_SVR_PORT_5432_TCP_ADDR -U postgres -a -f ./carpool_schema.sql

# create roles and schemas in carpool db
# psql -h $CP_PG_SVR_PORT_5432_TCP_ADDR -U postgres carpool -a -f ./carpool_roles.sql
# psql -h $CP_PG_SVR_PORT_5432_TCP_ADDR -U postgres carpool -a -f ./carpool_schema.sql
