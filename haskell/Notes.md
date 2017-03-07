# cd /var
# mkdir VM_share 
# sudo mount -t vboxsf c/users VM_share
# cd VM_share/Jon/Documents/GitHub/esp-vagrant-docker/haskell/

# build image
# docker build -t haskell-dev .

#
# NOTE: can run a container based on haskell:* image
#       run goes into ghci, but can use entrypoint for /bin/bash     
# docker run -it --entrypoint=/bin/bash -v $(pwd):/usr/src/app haskell:8.0.2
# docker run -it --entrypoint=/bin/bash -v $(pwd):/usr/src/app haskell:latest
# docker run -it --entrypoint=/bin/bash -v $(pwd):/usr/src/app haskell
#

# in shared folders, go to gh haskellTest on host

# useful tips here
# http://ralfw.de/2016/08/get-elm-up-and-running/
#
# using docker machine

# use --entrypoint flag as explained here:
# https://github.com/docker/docker/issues/5539
# docker run -it --entrypoint=/bin/bash -v $(pwd):/usr/src/app haskell-802
#
# docker run -it -p 8000:8000 -v $(pwd):/usr/src/app haskell-dev /bin/bash
# docker run -it -p 8000:8000 -v $(pwd):/usr/src/app haskell-basic /bin/bash
# docker run -it -p 8000:8000 -v $(pwd):/usr/src/app haskell-snap-710 /bin/bash
