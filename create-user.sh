#!/usr/bin/env bash
# sudo bash create-user.sh <user-name> <group-name>

user=$1
group=$2

groupadd $2
useradd -b /home -m -s `which bash` -g $group -G sudo $user
chown -R $user:$group /home/$user
