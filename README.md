

# Poa-Blockchain-Docker-Compose-env

[![N|Solid](https://i.imgur.com/DeFxZfP.png)](https://www.linkedin.com/in/chamsddine-bouzaine-44742060/)



# Ethereum Docker

Get started creating Ethereum development and multi-node clusters
rapidly using Docker.

We provide full Ethereum test nodes (using the [Ethereum Go client](https://github.com/ethereum/go-ethereum) with all APIs enabled by default as well as a monitoring dashboard (for the cluster version) provided
via [Netstats](https://github.com/cubedro/eth-netstats).


# Getting started

## 1. Installing

### 1. Ethereum Cluster with netstats monitoring

To run an Ethereum Docker cluster run the following:

```
$ docker-compose up -d
```

By default this will create:

* 1 Ethereum Bootstrapped container
* 3 Ethereum container (which connects to the bootstrapped container on launch)
* 1 Netstats container (with a Web UI to view activity in the cluster)

To access the Netstats Web UI:

```
open http://$(docker-machine ip default):3000
```

### 1.3. Test accounts ready for use

As part of the bootstrapping process we bootstrap 10 Ethereum accounts for 
use only 3 are pre pre-filled with 20 Ether for use in transactions by default.

If you want to change the amount of Ether for those accounts
See `files/genesis.json`.

## 2. Interact with geth

To get attached to the `geth` JavaScript console on the node you can run the following
```
docker exec -it {"CONTAINER ID"} geth attach ipc://root/.ethereum/devchain/geth.ipc
```
See the [Javascript Runtime](https://github.com/ethereum/go-ethereum/wiki/JavaScript-Console) docs for more.
