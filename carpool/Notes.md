# cd /var
# mkdir VM_share 
# sudo mount -t vboxsf c/users VM_share
# cd VM_share/Jon/Documents/GitHub/esp-vagrant-docker/carpool/

# build image
# docker build -t carpool .

# in shared folders, go to gh carpool backend on host

# useful tips here
# http://ralfw.de/2016/08/get-elm-up-and-running/
# docker run -it -p 8000:8000 -v $(pwd):/usr/src/app carpool /bin/bash

# docker exec -u 0 -it cont-id /bin/bash


# NOTE: works for flashing on docker machine (flashing itself was done using exec after this run)
# docker run -ti -u 0 -v $(pwd):/usr/src/app carpool-app /bin/bash

# cd /home/buildr/build/esp-lisp2


# docker run -it --link redis-svr -p 8000:8000 -v $(pwd):/usr/src/app esp carpool /bin/bash
# docker run -it --link redis-svr -p 8000:8000 -v $(pwd):/usr/src/app esp carpool /bin/bash

