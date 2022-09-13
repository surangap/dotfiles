#!/usr/bin/env bash

#rust for substrate
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
rustup update nightly
rustup target add wasm32-unknown-unknown

#node
brew install node
brew install lerna
npm i -g typescript yarn

brew install tmux
brew install wget
brew install vim
