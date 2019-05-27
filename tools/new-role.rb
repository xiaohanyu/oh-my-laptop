#!/usr/bin/env ruby

require 'fileutils'

def create_defaults(role)
  content = "---\n"

  FileUtils.mkdir_p("#{role}/defaults")
  file = "#{role}/defaults/main.yml"
  puts "creating #{file}..."
  File.open(file, 'w') do |f|
    f.write(content)
  end
end

def create_files(role)
  content = "---\n"

  FileUtils.mkdir_p("#{role}/files")
  file = "#{role}/files/main.yml"
  puts "creating #{file}..."
  File.open(file, 'w') do |f|
    f.write(content)
  end
end

def create_handlers(role)
  content = "---\n"

  FileUtils.mkdir_p("#{role}/handlers")
  file = "#{role}/handlers/main.yml"
  puts "creating #{file}..."
  File.open(file, 'w') do |f|
    f.write(content)
  end
end

def create_meta(role)
  content = "---\n"

  FileUtils.mkdir_p("#{role}/meta")
  file = "#{role}/meta/main.yml"
  puts "creating #{file}..."
  File.open(file, 'w') do |f|
    f.write(content)
  end
end

def create_tasks(role)
  main_content = <<EOF
---

- include: homebrew.yml
  when: ansible_os_family == 'Darwin'
  become: false

- set_fact:
    role_#{role}_done: true
EOF

  homebrew_content = <<EOF
---
EOF

  file_contents = [["#{role}/tasks/homebrew.yml", homebrew_content],
                   ["#{role}/tasks/main.yml", main_content]]

  FileUtils.mkdir_p("#{role}/tasks")

  file_contents.each do |file, content|
    puts "creating #{file}..."
    File.open(file, 'w') do |f|
      f.write(content)
    end
  end
end

def create_templates(role)
  content = "---\n"

  FileUtils.mkdir_p("#{role}/templates")
  file = "#{role}/templates/main.yml"
  puts "creating #{file}..."
  File.open(file, 'w') do |f|
    f.write(content)
  end
end

def create_vars(role)
  content = "---\n"

  FileUtils.mkdir_p("#{role}/vars")
  file = "#{role}/vars/main.yml"
  puts "creating #{file}..."
  File.open(file, 'w') do |f|
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

  if Dir.exist?(role)
    puts "role #{role} seems already exist, can't override it."
    puts "exiting...."
    return
  end

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
