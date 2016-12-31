# cd /var
# mkdir VM_share 
# sudo mount -t vboxsf c/users VM_share
# cd VM_share/Jon/Documents/GitHub/esp-vagrant-docker/redisNodejs/

# build image
# docker build -t redis-node-cli .

# docker run -it --link redis-svr -p 8000:8000 -v $(pwd):/usr/src/app esp redis-node-cli /bin/bash

# docker run -it --link redis-svr --rm redis /bin/bash
