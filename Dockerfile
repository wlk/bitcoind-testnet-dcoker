FROM ubuntu:16.04

RUN apt update && apt install -y software-properties-common

RUN add-apt-repository ppa:bitcoin/bitcoin \
 && apt update \
 && apt install -y --no-install-recommends bitcoind \
 && apt clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/usr/bin/bitcoind","-testnet","-debug","-server","-rpcallowip=0.0.0.0/0.0.0.0","-datadir=/datadir","-rpcuser=user","-rpcpassword=password"]
