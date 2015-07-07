#!/usr/bin/env bash

unamestr=$(uname)

# Mac OS X
if [[ $unamestr == "Darwin" ]]; then
    pip || easy_install pip
    brew || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew cask || brew install caskroom/cask/brew-cask
# debian, ubuntu, mint etc.
elif [[ $unamestr == "Linux"  && -f $(which apt-get) ]]; then
    sudo apt-get update
    pip || sudo apt-get install --yes python-pip python2.7-dev git
fi

ansible -h || sudo pip install ansible
