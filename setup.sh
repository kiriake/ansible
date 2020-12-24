#!/bin/bash

sudo apt update
sudo apt -y upgrade

sudo apt install -y ansible
mkdir ~/git
cd ~/git
git clone https://github.com/kiriake/dotfiles.git
