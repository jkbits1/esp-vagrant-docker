# go to Dockerfile folder :
# mount shared folder, go to this folder

# cd /var
# mkdir vms (VM_share) 
 
# sudo mount -t vboxsf c/users vms
# cd VM_share/Jon/Documents/GitHub/esp-vagrant-docker/carpool/front-end

# build image
# docker build -t cp-fe .

# cd .../GitHub/voteUSfrontend

# docker run -it --name cp-front-end -p 9090:9090 -v $(pwd):/usr/src/app cp-fe /bin/bash

# npm install http-server -g

# http-server -p 9090
