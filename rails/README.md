rails

docker build -t rails .

cd C:/Users/Jon/Documents/GitHub/railsDev/

docker run -it --name rails-svr -p 3000:3000 -v $(pwd):/usr/src/app rails /bin/bash

 -v node_modules:/usr/src/app/node_modules/ 


docker start $(docker ps -a | grep rails | cut -c 1-4)

docker exec -it $(docker ps | grep rails | cut -c 1-4) /bin/bash

.\VBoxManage modifyvm "default" --natpf1 "rails,tcp,127.0.0.1,3000,,3000"