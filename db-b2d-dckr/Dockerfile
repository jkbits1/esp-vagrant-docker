# for now, just copying contents of this file to vbox ubuntu
# docker host

# changed unrar to unrar-free

#FROM ubuntu:latest
#FROM ubuntu:eo-sdk-deps
#FROM ubuntu:eo-sdk
FROM debian:latest

RUN apt-get update
RUN apt-get install -y make unrar-free autoconf automake libtool gcc g++ gperf \
    flex bison texinfo gawk ncurses-dev libexpat-dev python python-serial sed \
    git unzip bash

# required for debian
RUN apt-get install libtool-bin
#seems required for make
RUN apt-get install wget
#seems required for esp-open-sdk?
RUN apt-get install bzip2


#user buildr, gp sudo, $home/build (build is not username, just where we
#put docs git stuff)

#sudo adduser buildr
#sudo usermod -a -G sudo buildr


RUN echo "Installing esp-open-sdk depends..."
#RUN git clone --recursive https://github.com/pfalcon/esp-open-sdk.git
#RUN echo "Installed sdk"
#RUN cd /esp-open-sdk/
#RUN cd ~/../esp-open-sdk/
#RUN echo pwd
#WORKDIR /esp-open-sdk/



#RUN make toolchain esptool libhal STANDALONE=n
#RUN echo "built sdk"

#export PATH=$PATH:$HOME/build/esp-open-sdk/xtensa-lx106-elf/bin/

#install, build rtos (whiffy)

#apt-get install gcc-multilib g++-multilib

#make -C examples/http_get


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
