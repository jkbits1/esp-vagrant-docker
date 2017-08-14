
# https://hub.docker.com/r/gyeh/purescript/

## docker build -t purescript-svr .

# repl
# docker run -it purescript-svr

# docker run -it purescript-svr /bin/bash

# cd .../GitHub/haskelElmTalk/purescript$

# docker run -it -v $(pwd):/usr/src/app purescript-svr /bin/bash

## docker run -it -p 1337:1337 -v $(pwd):/usr/src/app/ -v pure_app_node_modules:/usr/src/app/electron-quick-start/node_modules purescript-svr /bin/bash
