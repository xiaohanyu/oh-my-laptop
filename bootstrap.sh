#!/usr/bin/env bash

unamestr=$(uname)

# Mac OS X
if [[ $unamestr == "Darwin" ]]; then
    pip || easy_install pip
    brew || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew cask || brew install caskroom/cask/brew-cask
# debian, ubuntu, mint etc.
elif [[ $unamestr == "Linux"  && -f $(which apt-get) ]]; then
    sudo apt-get update --yes
    sudo apt-key adv --keyserver pgp.mit.edu --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
    sudo apt-get install --yes python-dev git
    sudo apt-get install --yes python-pip
fi

sudo pip install ansible
