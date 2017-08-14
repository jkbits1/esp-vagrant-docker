# go to Dockerfile folder :
# mount shared folder, go to this folder

# cd /var
# mkdir vms (VM_share) 
 
# sudo mount -t vboxsf c/users vms
# cd VM_share/Jon/Documents/GitHub/esp-vagrant-docker/tennisStats

# build image
# docker build -t stats-svr .

# cd .../GitHub/tennisStats/casInfo
# cd .../GitHub/tennisStats/playerInfo
# cd .../GitHub/tennisStats/expPlayerInfo

# run image with cmd line
# useful tips here - http://ralfw.de/2016/08/get-elm-up-and-running/
# 8000 - node server, 5858/8080 node inspector
# named node_modules volume
# docker run -it --name stats-server -p 8000:8000 -p 5858:5858 -p 8080:8080 -v $(pwd):/usr/src/app -v stats_node_modules:/usr/src/app/node_modules/ stats-svr /bin/bash
# unnamed volume
# docker run -it --name vid-info-server -p 8000:8000 -p 5858:5858 -p 8080:8080 -v $(pwd):/usr/src/app -v /usr/src/app/vidInfo/node_modules/ vid-info-svr /bin/bash
# default node_modules (no volume)
# docker run -it --name vid-info-server -p 8000:8000 -p 5858:5858 -p 8080:8080 -v $(pwd):/usr/src/app vidInfoSvr /bin/bash
#
# versions with different user login id
# docker run -it -u 0 -p 8000:8000 -v $(pwd):/usr/src/app vidInfoSvr /bin/bash

# (probably want to do revised methods above now)
# docker run -it --rm --name vid-info-server vidInfoSvr /bin/bash

# cd /usr/src/app

# elm reactor -a 0.0.0.0

# from boot2docker
# curl 172.17.0.2:8000

# from host
# curl localhost:8000
# curl $(docker-machine ip default):8000

# http://container-solutions.com/understanding-volumes-docker/
# docker inspect -f "{{json .Mounts}}" ctr-id




 
