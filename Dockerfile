FROM ubuntu:latest

MAINTAINER Tarun Singhal

LABEL "vendor"="Tarun Singhal"
LABEL "vendor.url"="http://www.tarunsinghal.me"
LABEL "maintainer"="hello@tarunsinghal.me"

ENV RPC_USER=microbitcoin
ENV RPC_PASSWORD=password

RUN apt-get update -y && apt-get install wget -y && apt-get install build-essential libssl-dev libdb++-dev git libssl1.0.0-dbg libdb-dev libboost-all-dev libminiupnpc-dev libevent-dev libcrypto++-dev libgmp3-dev -y
WORKDIR /root/
RUN git clone https://github.com/digixhub/MicroBitcoin.git

WORKDIR /root/MicroBitcoin/src
RUN mkdir -p obj/zerocoin

RUN chmod +x leveldb/build_detect_platform
RUN make -f makefile.unix RELEASE=1

WORKDIR /root/.microbitcoin/

RUN { \
        echo "rpcuser=${RPC_USER}" ;\
        echo "rpcpassword=${RPC_PASSWORD}" ;\
        echo "txindex=1" ; \
        echo "server=1" ; \
        echo "rpcallowip=0.0.0.0" ; \
        echo "listen=1" ; \
        echo "daemon=1" ;\
        } > /root/.microbitcoin/microbitcoin.conf


WORKDIR /root/MicroBitcoin/src/
EXPOSE 33013
EXPOSE 33014
ENTRYPOINT ["/bin/bash"]
