#!/bin/bash
set -e

{ \
        echo "rpcuser=${RPC_USER:-microbitcoin}" ;\
        echo "rpcpassword=${RPC_PASSWORD:-secret}" ;\
        echo "txindex=1" ; \
        echo "server=1" ; \
        echo "rpcallowip=0.0.0.0" ; \
        echo "listen=1" ; \
        echo "daemon=1" ;\
        } > /root/.microbitcoin/microbitcoin.conf

echo "Starting MBC..."
/root/MicroBitcoin/src/microbitcoind
echo "Started MBC.."
/bin/bash
exec "$@";
