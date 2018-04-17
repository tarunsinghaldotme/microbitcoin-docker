# microbitcoin-docker

MicroBitcoin (MBC) is a decentralized currency involving Blockchain Technology.

Coin Site : https://www.microbitcoinico.co

Block Explorer: https://blockexplorer.microbitcoin.co

INFO :

Algorithm: Scrypt

Type : PoW/PoS

Coin name: MicroBitcoin

Coin abbreviation: MBC

Coin Supply: 25200000 MBC

Premine: 1260000 MBC

Address letter: M

RPC port: 33014

P2P port: 33013

PoS percentage : 10% per year

Block reward : 57 coins

Coinbase maturity : 20 blocks

Target spacing : 64 seconds

Target timespan: 1 block

Transaction confirmations: 6 blocks

Seednode 1: 207.148.77.109

Seednode 2: 207.148.77.122


How to use this image

If you wish to adapt the default configuration
```
docker run -d --name my_microbitcoin tarunsinghaldotme/microbitcoin
```
If you need to change the RPC username and password, then you can use the environment variable
```
docker run -d --name my_microbitcoin  -e "RPC_USER=username" -e "RPC_PASSWORD=secret" tarunsinghaldotme/microbitcoin
```




