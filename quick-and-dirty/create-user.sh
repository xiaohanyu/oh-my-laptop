#!/usr/bin/env bash
# sudo bash create-user.sh <user-name> <group-name>

unamestr=$(uname)

if [[ $unamestr == "Darwin" ]]; then
    brew install fish;
elif [[ $unamestr == "Linux"  && -f $(which apt-get) ]]; then
    apt-get install -y fish
fi


user=$1
group=$2

groupadd $2
useradd -b /home -m -s `which fish` -g $group -G sudo $user
chown -R $user:$group /home/$user
