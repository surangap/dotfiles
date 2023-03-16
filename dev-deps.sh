#!/usr/bin/env bash
set -e

#rust for substrate
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# source "$HOME/.cargo/env"
# rustup update
# rustup update nightly
# rustup target add wasm32-unknown-unknown

#node
sudo apt-get install nodejs
sudo apt install npm
sudo npm install lerna
npm i -g typescript yarn
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

sudo apt-get install tmux
sudo apt-get install wget
sudo apt-get install vim
sudo apt-get install cmake

# #solidity
# npm install --save-dev hardhat

#docker
sudo apt-get install docker

#gpg
sudo apt-get install gpg
