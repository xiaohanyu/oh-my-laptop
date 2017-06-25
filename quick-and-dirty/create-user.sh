#!/usr/bin/env bash
# sudo bash create-user.sh <user-name> <group-name>

unamestr=$(uname)

if [[ $unamestr == "Darwin" ]]; then
    brew install zsh;
elif [[ $unamestr == "Linux"  && -f $(which apt-get) ]]; then
    apt-get install -y zsh
fi

user=$1
group=$2

groupadd $2
useradd -b /home -m -s `which zsh` -g $group -G sudo $user
chown -R $user:$group /home/$user

echo "$user ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$user
