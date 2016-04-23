# for now, just copying contents of this file to vbox ubuntu
# docker host

FROM ubuntu
RUN apt-get update
RUN apt-get install -y build-essential git make unrar-free unzip autoconf automake libtool gcc g++ gperf flex bison texinfo gawk ncurses-dev libexpat-dev python sed libreadline-dev libffi-dev pkg-config
RUN echo "Installing esp-open-sdk and micropython source..."
