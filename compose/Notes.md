
# http://stackoverflow.com/questions/29289785/how-to-install-docker-compose-on-windows/29728993#29728993
# https://github.com/boot2docker/boot2docker/issues/603#issuecomment-110033929

# docker@boot2docker:~$ 
# tce-load -wi python && curl https://bootstrap.pypa.io/get-pip.py | sudo python - && sudo pip install -U docker-compose

# http://stackoverflow.com/questions/36249744/interactive-shell-using-docker-compose
# stdin_open: true, tty: true
# docker-compose up

# docker-compose run web 
# docker-compose run web bash

# in shared folders, go to gh carpool backend on host
# docker run -it --link compose_cp-pg-svr2_1 -v $(pwd):/usr/src/app postgres:9.5.4 /bin/bash

