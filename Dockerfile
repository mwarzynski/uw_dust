FROM haskell

RUN apt-get update && \
    apt-get install -y flex bison cmake build-essential libxml2-dev

RUN cabal update && \
    cabal install bnfc

VOLUME /app
WORKDIR /app
