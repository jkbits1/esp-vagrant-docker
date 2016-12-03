# FROM haskell:7.10.3
FROM haskell:7

# RUN stack install pandoc pandoc-citeproc
# RUN cabal update 
RUN cabal update && cabal install pandoc pandoc-citeproc
ENTRYPOINT ["pandoc"]
