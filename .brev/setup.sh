#!/bin/bash

set -eo pipefail

####################################################################################
##### Specify software and dependencies that are required for this project     #####
#####    Brev.dev documentation: https://docs.brev.dev                         #####
####################################################################################

##### Yarn #####
(echo ""; echo "##### Yarn #####"; echo "";)
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt install -y yarn

#### Node v14.x + npm #####
(echo ""; echo "##### Node v14.x + npm #####"; echo "";)
sudo apt install ca-certificates
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

####  Solidity  #####
(echo ""; echo "##### Solidity #####"; echo "";)
sudo npm install -g solc

#### Next.js + (React) +react-dom #####
(echo ""; echo "####Next.js + (React) +react-dom ####"; echo "";)
npm install next react react-dom

#### Add Env Variables #####
(echo ""; echo "##### Add Env Variables #####"; echo "";)
npm install 
echo "# Sorry haxors, these values are made up!
HARDHAT_CHAIN_ID=1337
ROPSTEN_URL=https://ropsten.infura.io/v3/2b01848202b443298da25cc623ca2fde
ROPSTEN_PRIVATE_KEY=df57089aefbcaf7ba0bc227dafbffa9fc08a93fdc65e1e42214a14efcf23656e
NEXT_PUBLIC_GREETER_ADDRESS=0x5FbDB231567a8fbcb367f032d93F642f64180aa3" >> .env

#### Project Setup #####
(echo ""; echo "##### Project Setup #####"; echo "";)
npm install 
npx hardhat compile