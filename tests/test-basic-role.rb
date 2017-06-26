require 'base-test.rb'


class BasicRoleTest < BaseTest
  def setup
    autojump_list = ['j', 'jc', 'jo', 'jco']

    @command_list = ['ag', 'cloc', 'editorconfig', 'global', 'gtags', 'globash',
                     'htop', 'md5sum', 'mosh', 'ranger', 'rlwrap', 'wget',
                     'tmux', 'zsh'] + autojump_list
  end
end
