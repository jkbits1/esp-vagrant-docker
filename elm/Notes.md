# go to Dockerfile folder :
#   mount shared folder, go to this folder

# cd /var
# mkdir VM_share 
 
# sudo mount -t vboxsf c/users VM_share
# cd VM_share/Jon/Documents/GitHub/esp-vagrant-docker/elm/

# build image
# docker build -t elm-server .

# run image with cmd line
# useful tips here
# http://ralfw.de/2016/08/get-elm-up-and-running/
# docker run -ti -p 8000:8000 -v $(pwd):/usr/src/app elm-server /bin/bash
# docker run -ti -p 8000:8000 -p 5858:5858 -p 8080:8080 -v $(pwd):/usr/src/app elm-server /bin/bash
#
# versions with different user login id
# docker run -it -u 0 -p 8000:8000 -v $(pwd):/usr/src/app elm-server /bin/bash
# docker run -it -u 0 -p 8000:8000 -v $(pwd):/tmp/elm     elm-server /bin/bash

# (probably want to do revised methods above now)
# docker run -ti --rm --name elm-svr elm-server /bin/bash

# cd /usr/src/app
# cd /tmp/elm/

# elm reactor -a 0.0.0.0

# from boot2docker
# curl 172.17.0.2:8000

# from host
# curl localhost:8000
# curl $(docker-machine ip default):8000

