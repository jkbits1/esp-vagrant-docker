# go to Dockerfile folder :
#   mount shared folder, go to this folder

# cd /var
# mkdir VM_share 
 
# sudo mount -t vboxsf c/users VM_share
# cd VM_share/Jon/Documents/GitHub/esp-vagrant-docker/elm/

# build image
# docker build -t elm-server .

# run image with cmd line
# (probably want to do revised method below now)
# docker run -ti --rm --name elm-svr elm-server /bin/bash

# useful tips here
# http://ralfw.de/2016/08/get-elm-up-and-running/
# docker run -it -u 0 -p 8000:8000 -v $(pwd):/tmp/elm elm-server /bin/bash

# cd /tmp/elm
