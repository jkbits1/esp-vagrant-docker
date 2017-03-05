# go to Dockerfile folder :
#   mount shared folder, go to this folder

# cd /var
# mkdir VM_share 
 
# sudo mount -t vboxsf c/users VM_share
# cd VM_share/Jon/Documents/GitHub/esp-vagrant-docker/elm/elmNodeClient

# build image
# docker build -t elm-client-0180 .

# in shared folders, go to gh elm-work

# run image with cmd line
# useful tips here
# http://ralfw.de/2016/08/get-elm-up-and-running/
# NOTE: --link probably not used by this container
# docker run -it --link vid-info-server --name vid-info-elm-client -v $(pwd):/usr/src/app elm-client-0180 /bin/bash
#
# versions with different user login id
# docker run -it -u 0 -p 8000:8000 -v $(pwd):/usr/src/app elm-client-0180 /bin/bash

# (probably want to do revised methods above now)
# docker run -it --rm --name elm-svr elm-client-0180 /bin/bash

# cd /usr/src/app

# TEST server from this container
#
# curl $VID_INFO_SERVER_PORT_8000_TCP_ADDR:8000
# curl VID_INFO_SERVER_PORT_8000_TCP
