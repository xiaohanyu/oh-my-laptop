#!/usr/bin/env bash

# get pip and ansible
bash -x bootstrap.sh

# initialize machine
ansible-playbook -i localhost oh-my-laptop.yml --extra-vars="ansible_become_pass="

# run test
gem install minitest
ruby -Itests tests/run-tests.rb
