#!/usr/bin/env bash

# get pip and ansible
bash -x bootstrap.sh

# initialize machine
ansible-playbook -i localhost oh-my-laptop.yml --extra-vars="ansible_become_pass="

# run test
ruby tests/test-linux.rb
