#!/usr/bin/env bash

# get pip and ansible
bash -x bootstrap.sh

# initialize machine
ansible-playbook -i localhost -K oh-my-laptop.yml

# run test
ruby tests/test-linux.rb
