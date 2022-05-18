#!/bin/bash

set -eo pipefail

####################################################################################
##### Specify software and dependencies that are required for this project     #####
#####    Brev.dev documentation: https://docs.brev.dev                         #####
####################################################################################


#### Node v14.x + npm #####
(echo ""; echo "##### Node v14.x + npm #####"; echo "";)
sudo apt install ca-certificates
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

####  Solidity  #####
(echo ""; echo "##### Solidity #####"; echo "";)
sudo apt-get install solc

#### Next.js + (React) +react-dom #####
(echo ""; echo "####Next.js + (React) +react-dom ####"; echo "";)
npm install next react react-dom

#### Project Setup #####
(echo ""; echo "##### Project Setup #####"; echo "";)
npm install 
