# for now, just copying contents of this file to vbox ubuntu
# docker host

# changed unrar to unrar-free

#FROM ubuntu:latest
#FROM ubuntu:eo-sdk-deps
#FROM ubuntu:eo-sdk
FROM debian:latest

# NOTE install anything that needs root user here, as change to
#      another user below

RUN apt-get update
RUN apt-get install -y make unrar-free autoconf automake libtool gcc g++ gperf \
    flex bison texinfo gawk ncurses-dev libexpat-dev python python-serial sed \
    git unzip bash

# required for debian
RUN apt-get install libtool-bin
#seems required for make
RUN apt-get install -y wget
#seems required for esp-open-sdk - help2man & python added later, as needed now
RUN apt-get install -y bzip2 help2man python2.7-dev

# needed by rtos
RUN echo "install libs for 32/64 compatibility"
RUN apt-get install -y gcc-multilib g++-multilib

# for editing 
RUN apt-get install -y vim-tiny

# for connecting to device
RUN apt-get install -y screen


RUN useradd -ms /bin/bash buildr && usermod -a -G sudo buildr

USER buildr

ENV HOME /home/buildr

RUN mkdir $HOME/build
WORKDIR $HOME/build

#user buildr, gp sudo, $home/build (build is not username, just where we
#put docs git stuff)

#sudo adduser buildr
#sudo usermod -a -G sudo buildr


RUN echo "Installing esp-open-sdk depends..."
RUN git clone --recursive https://github.com/pfalcon/esp-open-sdk.git
RUN echo "Installed sdk"
#RUN cd /esp-open-sdk/
#RUN cd ~/../esp-open-sdk/
#RUN echo pwd

WORKDIR $HOME/build/esp-open-sdk/

RUN make toolchain esptool libhal STANDALONE=n
RUN echo "built sdk"

ENV PATH $PATH:$HOME/build/esp-open-sdk/xtensa-lx106-elf/bin/
#export PATH=$PATH:$HOME/build/esp-open-sdk/xtensa-lx106-elf/bin/

WORKDIR $HOME/build/
#install, build rtos (whiffy)

RUN echo "Installing rtos"
RUN git clone --recursive https://github.com/Superhouse/esp-open-rtos.git
RUN echo "Installed rtos"

WORKDIR $HOME/build/esp-open-rtos
#make -C examples/http_get


WORKDIR $HOME/build/
RUN echo "install jk fork of esp lisp"
RUN git clone https://github.com/jkbits1/esp-lisp.git
RUN echo "installed esp lisp jk"

#install jk lisp fork

#from docker to b2d
#docker cp 05767738f09a:/home/buildr/.../firmware/ .

# copy files from host to docker (docker cp sometimes gives an error)
# cd host folders
# tar -cv * | docker exec -i ctr-id tar x -C docker-folder-path

#b2d - installs, tinylinux
#tce-load -wi python.tcz
#ssl

#python esptool.py -p /dev/ttyUSB0 --baud 115200
#write_flash --flash_size=8m 0 0x00000.bin 0x20000 0x20000.bin
#write_flash -fs=16m -fm qio -ff 40m 0x0 rboot.bin 0x1000 blank_config.bin 0x2000 esp-lisp.bin 

#gives docker ttyusb0
# run on host, before starting b2d, to check usb devices
#VBoxManage.exe list usbhost
# 
#docker run -t -i --privileged -v /dev/bus/usb:/dev/bus/usb
#debian:rtos-lisp-jk /bin/bash
#
# from b2d check privilige state of container with this
# docker inspect --format='{{.HostConfig.Privileged}}' ctr-id

#
# then, may need to repower esp for dckr to connect usb0
# and this??
# http://unix.stackexchange.com/questions/42844/how-do-i-access-a-usb-serial-port-without-an-entry-in-dev
# mknod /dev/ttyUSB0 c 188 0
#
# info from here
#http://unix.stackexchange.com/questions/97235/how-to-check-if-an-usb-device-is-present-without-lsusb
# cat /sys/bus/usb/devices/*/product
#
#info on usb device once connected
#http://unix.stackexchange.com/questions/144029/command-to-determine-ports-of-a-device-like-dev-ttyusb0
#udevadm info -a -p  $(udevadm info -q path -n /dev/ttyUSB0)


# from b2d check privilege state of container with this
# docker inspect --format='{{.HostConfig.Privileged}}' ctr-id

# then, may need to repower esp for dockerto connect usb0
# and this??
# http://unix.stackexchange.com/questions/42844/how-do-i-access-a-usb-serial-port-without-an-entry-in-dev

# dmesg | grep tty
# mknod /dev/ttyUSB0 c 188 0
#
# info from here
#http://unix.stackexchange.com/questions/97235/how-to-check-if-an-usb-device-is-present-without-lsusb
# cat /sys/bus/usb/devices/*/product
#
#info on usb device once connected
#http://unix.stackexchange.com/questions/144029/command-to-determine-ports-of-a-device-like-dev-ttyusb0
#udevadm info -a -p  $(udevadm info -q path -n /dev/ttyUSB0)

# screen /dev/ttyUSB0 115200

#docker run -t -i --device=/dev/ttyUSB0 debian:rtos-lisp-jk /bin/bash

# run as root
#docker run -t -i -u 0 --device=/dev/ttyUSB0 debian:rtos-lisp-jk /bin/bash

# delete containers (so can delete images)
#docker rm $(docker ps -a -q)

#id (shows user id for logged in user)
#join running container as user id 1000 (0 is root)
#docker exec -u 1000 -ti cont-id /bin/bash

# join running container as root
#docker exec -ti cont-id /bin/bash


#
# connect to docker from win host
#

#http://ispyker.blogspot.co.uk/2014/04/accessing-docker-container-private.html

# interesting for auto dns route
#http://rosenberg.io/2014/08/08/docker-boot2docker-and-dns-resolution-of-containers.html

#add adapter as described, manually in vbox 
#(may be able to adjust vagrant, as vagrant up overwrites)

#start vm as headless in vbox (else vg overwrites, as above)

#vg ssh ... as usual

#b2d modify eth1 (which now exists) as described
#sudo /sbin/ifconfig eth1 172.16.0.11
#sudo /sbin/ifconfig eth1 netmask 255.255.0.0

#on pc, add route as described
#route add 172.17.0.0 MASK 255.255.0.0  172.16.0.11 metric 3
#route print

#handy bits
#b2d, docker inspect ctr-id | grep IPA

#netstat -nr | grep 172\.17

# gdbserver host:10000 ./a.out
# gdb ./a.out
# target remote 172.17.0.4:10000

#ftp (use passive mode) - server on ubuntu, client on docker, copy a.out over
#sudo service vsftpd start

# ddd, run in local copy of repo
# ddd --eval-command="target remote 172.17.0.4:10000"
# or
# ddd a.out, then target remote 172.17.0.4:10000

# ubuntu - add eth1 to file
# /etc/network/interfaces

# run from docker lisp/firmware folder
#esptool.py -p /dev/ttyUSB0 --baud 115200 write_flash --flash_size=8m
# 0 $HOME/.../firmware/0x00000.bin
# 0x20000 $HOME/.../firmware/0x20000.bin

# cd $HOME/.../esp-open-sdk/esptool/
# cp $HOME/.../firmware/*.bin .
# cp /home/.../firmware/*.bin .

# need to run docker in privileged mode as above 
# (can't do later on with exec, but mode is retained across dckr stop and start, chk above confirms this)

#http://unix.stackexchange.com/questions/144029/command-to-determine-ports-of-a-device-like-dev-ttyusb0
# udevadm info -a -p  $(udevadm info -q path -n /dev/ttyUSB0)


# cp firmware/*.bin ../esp-open-sdk/esptool/


# issues with screen, auto terminating (due to tty support)
# https://github.com/docker/docker/issues/8755
#
# (seems to need root user)
#
# cf docker issues 8755 for details of this workaround
# docker exec -ti -u 0 cont-id script -q -c "/bin/bash" /dev/null


# use of netcat to test container linking - minor revisions to run commands from :
# https://liquidat.wordpress.com/2014/06/12/howto-test-docker-linking-with-netcat/
# docker run -t centos yum -y install nc
# docker commit c1f0f1a848fb nc

# docker run -d -p 8080 --name nc-server nc nc -l 8080
# docker inspect nc-server | grep IP

# docker run -ti --rm=true --name nc-client --link nc-server nc /bin/bash

# in client, env and nc server 8080, type something then enter
# confirm data sent from client
# docker logs nc-server

