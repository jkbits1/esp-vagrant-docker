# for now, just copying contents of this file to vbox ubuntu
# docker host

# changed unrar to unrar-free

#FROM ubuntu:latest
#FROM ubuntu:eo-sdk-deps
FROM ubuntu:eo-sdk
RUN apt-get update
RUN apt-get install -y make unrar-free autoconf automake libtool gcc g++ gperf \
    flex bison texinfo gawk ncurses-dev libexpat-dev python python-serial sed \
    git unzip bash
#RUN apt-get install libtool-bin    
#RUN apt-get install libtool-bin    
RUN echo "Installing esp-open-sdk depends..."
#RUN git clone --recursive https://github.com/pfalcon/esp-open-sdk.git
#RUN echo "Installed sdk"
#RUN cd /esp-open-sdk/
RUN cd ~/../esp-open-sdk/
RUN echo pwd
WORKDIR /esp-open-sdk/

#seems required for make
#RUN apt-get install wget

RUN make toolchain esptool libhal STANDALONE=n
RUN echo "built sdk"
