#!/usr/bin/env bash

# get pip and ansible
curl -L https://raw.githubusercontent.com/xiaohanyu/oh-my-laptop/master/bootstrap.sh | bash

# initialize machine
ansible-playbook -i localhost -K oh-my-laptop.yml

# run test
ruby tests/test-linux.rb
