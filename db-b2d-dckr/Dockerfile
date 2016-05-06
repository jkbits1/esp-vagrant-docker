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
#seems required for esp-open-sdk?
RUN apt-get install bzip2

# needed by rtos
RUN echo "install libs for 32/64 compatibility"
RUN apt-get install -y gcc-multilib g++-multilib


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
#docker cp 05767738f09a:/home/buildr/build/esp-lisp-jk/firmware/ .

#b2d? shared folders
#sudo mount -t vboxsf win_share /VM_share


#b2d - installs, tinylinux
#tce-load -wi python.tcz
#ssl

#apt-get install -y screen

#python esptool.py -p /dev/ttyUSB0 --baud 115200
#write_flash --flash_size=8m 0 0x00000.bin 0x20000 0x20000.bin

#gives docker ttyusb0
#docker run -t -i --privileged -v /dev/bus/usb:/dev/bus/usb
#debian:rtos-lisp-jk /bin/bash

#docker run -t -i --device=/dev/ttyUSB0 debian:rtos-lisp-jk /bin/bash

# delete containers (so can delete images)
#docker rm $(docker ps -a -q)