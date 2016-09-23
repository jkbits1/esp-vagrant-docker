
# from https://hub.docker.com/_/redis/

# docker run --name redis-svr -d redis
# docker run -it --link redis-svr --rm redis redis-cli -h redis -p 6379
# this last line hung, but could exec into it from new git bash
# docker exec -ti ctr-id /bin/bash
# still issues though

# docker run -it --link redis-svr --rm redis /bin/bash

#
# also see these notes
#
# https://docs.docker.com/engine/examples/running_redis_service/

# can then do this
# env | grep (name of --link param)

# redis-cli -h $REDIS_SVR_PORT_6379_TCP_ADDR


###########

# haskell client

# this is useful, note that yum names may differ from apt-get ones
# http://shakthimaan.com/posts/2015/12/11/haskell-databases-2/news.html

# should be using redis image here
# docker run -ti --link redis-svr debian /bin/bash

# apt-get update
# apt-get install cabal-install

# start of service fails, but that saves us having to stop it
# apt-get install redis-server

# at this point, this works
#  redis-cli -h $REDIS_SVR_PORT_6379_TCP_ADDR

# cabal update
# cabal install hedis

ghci
:m Database.Redis
conn <- connect defaultConnectInfo { connectHost = "172.17.0.2" }
runRedis conn ping


http://ebanshi.cc/questions/726058/how-to-connect-to-a-redis-server-via-unix-domain-socket-using-hedis-in-haskell
https://coderwall.com/p/mkrdvq/cabal-sandboxes-and-ghci-support
