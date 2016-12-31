#b2d? shared folders

# go to Dockerfile  folder :
# mount shared folder, go to this folder

# cd /var
# mkdir VM_share 
 
# sudo mount -t vboxsf c/users VM_share
# cd VM_share/Jon/Documents/GitHub/esp-vagrant-docker/db-b2d-dckr

# build image
# docker build -t esp .

# in shared folders, go to gh esp-lisp folder on host

# run image with cmd line
# (probably want to do revised method below now)
# docker run -ti --rm --name esp-server esp /bin/bash

# useful tips here
# http://ralfw.de/2016/08/get-elm-up-and-running/
# docker run -it -p 8000:8000 -v $(pwd):/home/buildr/build/esp-lisp2 esp /bin/bash

# NOTE: works for flashing on docker machine (flashing itself was done using exec after this run)
# docker run -ti -u 0 -v $(pwd):/home/buildr/build/esp-lisp2 --device=/dev/ttyUSB0 esp /bin/bash

# cd /home/buildr/build/esp-lisp2
