# FROM haskell:7.10.3
FROM haskell:7

# RUN stack install pandoc pandoc-citeproc
# RUN cabal update 
# RUN cabal update && cabal install pandoc pandoc-citeproc

echo 'deb http://ftp.debian.org/debian/ jessie-backports main' | sudo tee /etc/apt/sources.list.d/backports.list
sudo apt-get update && apt-get -t jessie-backports install ghc cabal-install
cabal update && echo export PATH='$HOME/.cabal/bin:$PATH' >> $HOME/.bashrc

ENTRYPOINT ["pandoc"]
