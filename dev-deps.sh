#!/usr/bin/env bash

set -e


# change the default shell to bash
default_shell="$(dscl . -read "/Users/$USER" UserShell | awk '{print $2}')"

if [[ "$default_shell" != */bash ]]; then
  chsh -s /bin/bash
fi

#rust for substrate
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
rustup update nightly
rustup target add wasm32-unknown-unknown

brew install wget

#node
brew install node
brew install lerna
npm i -g typescript yarn
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

brew install tmux
brew install vim
brew install cmake

#solidity
npm install -g hardhat

#docker
brew install docker

#gpg
brew install gpg
