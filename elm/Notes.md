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
# docker run -ti -p 8000:8000 -p 5858:5858 -p 8080:8080 -p 49153:49153 -v $(pwd):/usr/src/app elm-server /bin/bash
# docker run -ti -p 8000:8000 -p 5858:5858 -p 8080:8080 -v $(pwd):/usr/src/app elm-server /bin/bash
# docker run -ti -p 8000:8000 -v $(pwd):/usr/src/app elm-server /bin/bash
#
# versions with different user login id
# docker run -it -u 0 -p 8000:8000 -v $(pwd):/usr/src/app elm-server /bin/bash
# docker run -it -u 0 -p 8000:8000 -v $(pwd):/tmp/elm     elm-server /bin/bash

# (probably want to do revised methods above now)
# docker run -ti --rm --name elm-svr elm-server /bin/bash

# TEST workarounds for sym links
# NOTE: getting some results with this - vidInfo (no sym link errs with that) worked wll  
# NOTE: for vidInfo, .../node_modules/ and .../node_modules (no trailing slash) both worked
# NOTE: ang2 rx-app - installed without usual sym link errs, but host file changes were not visible, at
#       least for webpack. Maybe test with restarted webpack, also using trailing slash.
# rx-app         
# docker run -ti -p 8000:8000 -p 5858:5858 -p 8080:8080 -p 49153:49153 -v $(pwd):/usr/src/app -v /usr/src/app/symLinkTest/rx-app/node_modules elm-server-0180 /bin/bash
# vidInfo
# docker run -ti -p 8000:8000 -p 5858:5858 -p 8080:8080 -p 49153:49153 -v $(pwd):/usr/src/app -v /usr/src/app/vidInfo/node_modules/ elm-server-0180 /bin/bash

# cd /usr/src/app
# cd /tmp/elm/

# elm reactor -a 0.0.0.0

# from boot2docker
# curl 172.17.0.2:8000

# from host
# curl localhost:8000
# curl $(docker-machine ip default):8000


# http://container-solutions.com/understanding-volumes-docker/
# docker inspect -f "{{json .Mounts}}" ctr-id




 
