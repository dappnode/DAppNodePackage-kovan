# Kovan Testnet DAppNode package

[![DAppNodeStore Available](https://img.shields.io/badge/DAppNodeStore-Available-brightgreen.svg)](http://my.admin.dnp.dappnode.eth/#/installer/kovan.dnp.dappnode.eth)

[![Website dappnode.io](https://img.shields.io/badge/Website-dappnode.io-brightgreen.svg)](https://dappnode.io/)
[![Documentation Wiki](https://img.shields.io/badge/Documentation-Wiki-brightgreen.svg)](https://github.com/dappnode/DAppNode/wiki)
[![GIVETH Campaign](https://img.shields.io/badge/GIVETH-Campaign-1e083c.svg)](https://beta.giveth.io/campaigns/5b44b198647f33526e67c262)
[![ELEMENT DAppNode](https://img.shields.io/badge/ELEMENT-DAppNode-blue.svg)](https://app.element.io/#/room/#DAppNode:matrix.org)
[![Twitter Follow](https://img.shields.io/twitter/follow/espadrine.svg?style=social&label=Follow)](https://twitter.com/DAppNode?lang=es)

Dappnode package responsible for providing the kovan chain ( based on parity v2.1.4)

Aragon Package Manager Repo at [0xc7748be3246fF59bA8E3aDA63fb4C42BE39DEb81](https://etherscan.io/address/0xc7748be3246fF59bA8E3aDA63fb4C42BE39DEb81)

ou can use this package without installing it in your DAppNode following these instructions:

## Prerequisites

- git

   Install [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) commandline tool.

- docker

   Install [docker](https://docs.docker.com/engine/installation). The community edition (docker-ce) will work. In Linux make sure you grant permissions to the current user to use docker by adding current user to docker group, `sudo usermod -aG docker $USER`. Once you update the users group, exit from the current terminal and open a new one to make effect.

- docker-compose

   Install [docker-compose](https://docs.docker.com/compose/install)
   
**Note**: Make sure you can run `git`, `docker ps`, `docker-compose` without any issue and without sudo command.


## Buidling

`docker-compose build`

## Running

### Start

`docker-compose up -d`

### View logs

`docker-compose logs -f`

### Stop

`docker-compose down`

## Extra options

You can write extra options on the adminui or edit the `docker-compose.yml` and add extra options, such as:
```
 - EXTRA_OPTS=--tracing on
```

## Connect using web3js

If the package is running and you're connected to your dappnode you can use:
```
var Web3 = require('web3');
var web3 = new Web3('ws://my.kovan.dnp.dappnode.eth:8546')
web3.eth.getBlockNumber().then(console.log)
```
In case you are running it locally:
```
var Web3 = require('web3');
var web3 = new Web3('ws://127.0.0.1:8546')
web3.eth.getBlockNumber().then(console.log)
```

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details
