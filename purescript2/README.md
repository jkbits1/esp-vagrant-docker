

# a version of this dockerfile adjusted to be root user, for use of node_modules below
# https://hub.docker.com/r/gyeh/purescript/

## docker build -t purescript-svr .

# repl
# docker run -it purescript-svr

# docker run -it purescript-svr /bin/bash

# cd .../GitHub/haskelElmTalk/purescript$

# docker run -it -v $(pwd):/usr/src/app purescript-svr /bin/bash

## docker run -it -p 1337:1337 -v $(pwd):/usr/src/app/ -v pure_app_node_modules:/usr/src/app/purescript-thermite-example/node_modules/ purescript-svr2 /bin/bash
