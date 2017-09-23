# Docker environment for Elm development

#### Go to Dockerfile folder
Mount the shared folder, then go to the folder that contains these notes and Dockerfile - as shown here.

```
mkdir /var/vms 


sudo mount -t vboxsf c/users /var/vms
cd /var/vms/Jon/Documents/GitHub/esp-vagrant-docker/elm/elmNodeClient
```

## Build Elm image
```
docker build -t elm-client-0180 .
```

## Use Elm image
#### in shared folders, go to folder that contains github repo with elm code

#### run image with cmd line
#### useful tips here
#### [http://ralfw.de/2016/08/get-elm-up-and-running/]()

#### NOTE: --link probably not used by this container
```
docker run -it --link vid-info-server --name vid-info-elm-client -v $(pwd):/usr/src/app elm-client-0180 /bin/bash

docker run -it --name elm-0180 -v $(pwd):/usr/src/app elm-client-0180 /bin/bash
```

#### now, in docker machine, go to app folder
```
 cd /usr/src/app
```

# versions with different user login id
# docker run -it -u 0 -p 8000:8000 -v $(pwd):/usr/src/app elm-client-0180 /bin/bash

# (probably want to do revised methods above now)
# docker run -it --rm --name elm-svr elm-client-0180 /bin/bash

# cd /usr/src/app

# TEST server from this container
#
# curl $VID_INFO_SERVER_PORT_8000_TCP_ADDR:8000
# curl VID_INFO_SERVER_PORT_8000_TCP
