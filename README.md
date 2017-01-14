# bitcoind-testnet-docker

This image is pushed to Docker Hub: https://hub.docker.com/r/wlkx/bitcoind-testnet/

# Running

```
docker run --rm -v ~/bitcoind-storage:/datadir -p 18332:18332 -p 18333:18333 wlkx/bitcoind-testnet
```