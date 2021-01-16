#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
  OS="MacOS"
  sudo easy_install pip
  sudo pip install ansible
  sudo pip install ansible --upgrade
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  OS="Linux"
  sudo apt update
  sudo apt -y upgrade
  sudo apt install -y ansible
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then                                                                                           
  OS='Cygwin'
fi

if [ ! $OS ]; then
  echo "Your platform is not supported. "
  exit 1
fi

mkdir ~/git
cd ~/git
git clone https://github.com/kiriake/dotfiles.git
