# FROM haskell:7.10.3
# FROM haskell:7
FROM haskell:8.0.2

#
# NOTE: this file may not be needed at all now, see Notes.md for
#       directly using docker run based on haskell:* image
#

# based on docker hub page
# https://hub.docker.com/_/haskell/

# stack fails with haskell 802, skylighting fails
# NOTE: successfully creates a container that supports ghci
# RUN stack install pandoc pandoc-citeproc

# cabal works with haskell 802, although very slow!
RUN cabal update 
RUN cabal update && cabal install pandoc pandoc-citeproc

# used for haskell 7
# echo 'deb http://ftp.debian.org/debian/ jessie-backports main' | sudo tee /etc/apt/sources.list.d/backports.list
# sudo apt-get update && apt-get -t jessie-backports install ghc cabal-install
# cabal update && echo export PATH='$HOME/.cabal/bin:$PATH' >> $HOME/.bashrc

# Probably should remove this although specified on
# docker hub page (maybe it's just meant as an example app?).
# Workaround in notes uses --entrypoint with docker run
ENTRYPOINT ["pandoc"]
