#!/bin/bash
#
# Install neovim
# Refference: https://github.com/neovim/neovim/wiki/Installing-Neovim
#
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install python3-dev python3-pip

pip3 install -U pip
which nvim
