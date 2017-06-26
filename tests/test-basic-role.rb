require 'base-test.rb'


class BasicRoleTest < BaseTest
  def setup
    @command_list = ['ag', 'cloc', 'editorconfig', 'htop', 'md5sum', 'mosh',
                     'ranger', 'rlwrap', 'wget', 'tmux', 'zsh']
  end
end
