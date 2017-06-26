#!/usr/bin/env ruby

require 'fileutils'

def create_defaults(role)
  content = "---\n"

  FileUtils.mkdir_p("#{role}/defaults")
  File.open("#{role}/defaults/main.yml", 'w') do |f|
    f.write(content)
  end
end

def create_files(role)
  content = "---\n"

  FileUtils.mkdir_p("#{role}/files")
  File.open("#{role}/files/main.yml", 'w') do |f|
    f.write(content)
  end
end

def create_handlers(role)
  content = "---\n"

  FileUtils.mkdir_p("#{role}/handlers")
  File.open("#{role}/handlers/main.yml", 'w') do |f|
    f.write(content)
  end
end

def create_meta(role)
  content = "---\n"

  FileUtils.mkdir_p("#{role}/meta")
  File.open("#{role}/meta/main.yml", 'w') do |f|
    f.write(content)
  end
end

def create_tasks(role)
  main_content = <<EOF
---

- include: apt.yml
  when: ansible_pkg_mgr == 'apt'
- include: homebrew.yml
  when: ansible_os_family == 'Darwin'
  become: false

- set_fact:
    role_#{role}_done: true
EOF

  apt_content = <<EOF
---
EOF

  homebrew_content = <<EOF
---
EOF

  FileUtils.mkdir_p("#{role}/tasks")
  File.open("#{role}/tasks/apt.yml", 'w') do |f|
    f.write(apt_content)
  end

  File.open("#{role}/tasks/homebrew.yml", 'w') do |f|
    f.write(homebrew_content)
  end

  File.open("#{role}/tasks/main.yml", 'w') do |f|
    f.write(main_content)
  end
end

def create_templates(role)
  content = "---\n"

  FileUtils.mkdir_p("#{role}/templates")
  File.open("#{role}/templates/main.yml", 'w') do |f|
    f.write(content)
  end
end

def create_vars(role)
  content = "---\n"

  FileUtils.mkdir_p("#{role}/vars")
  File.open("#{role}/vars/main.yml", 'w') do |f|
    f.write(content)
  end
end

def create_readme(role)
  content =<<EOF
  #+TITLE: Oh My Laptop #{role.capitalize}
  #+OPTIONS: toc:nil num:nil ^:nil

  This is part of [[https://github.com/xiaohanyu/oh-my-laptop][oh-my-laptop]].
EOF

  FileUtils.mkdir_p(role)

  File.open("#{role}/README.org", 'w') do |f|
    f.write(content)
  end
end

def create_role(role)
  FileUtils.cd('roles', :verbose=>true)
  create_defaults(role)
  create_files(role)
  create_handlers(role)
  create_meta(role)
  create_tasks(role)
  create_templates(role)
  create_vars(role)
  create_readme(role)
  FileUtils.cd('..', :verbose=>true)
end

def main
  if ARGV.length != 1
    puts "Wrong number of arguments."
    puts "Usage: new-role.rb <role_name>"
  else
    role_name = ARGV[0]
    create_role(role_name)
  end
end

if __FILE__ == $0
  main
end
