FROM postgres:9.5.4

WORKDIR /usr/src/app/db

USER postgres

RUN . ./scripts/create_fresh_carpool_db.sh carpool

RUN . ./scripts/init_cp_web_role.sh carpool



# see Notes.md for server, client psql

# docker run -it --link cp-pg-svr carpool /bin/bash
# docker run -it --link cp-pg-svr -p 8000:8000 -v $(pwd):/usr/src/app carpool /bin/bash

# psql
# NOTE: at least some of these work
# docker run -it --rm --link cp-pg-svr postgres:9.5.4 psql -h 172.17.0.2 -U postgres
# docker run -it --rm --link cp-pg-svr postgres:9.5.4 psql -h $CARPOOL_PG_PORT_5432_TCP_ADDR -U postgres
# docker run -it --rm --link cp-pg-svr postgres:9.5.4 psql -h postgres -U postgres
# docker run -it --rm --link cp-pg-svr postgres:9.5.4 /bin/bash



# docker run -it --rm --link cp-pg-svr -u postgres postgres:9.5.4 /bin/bash
# 


