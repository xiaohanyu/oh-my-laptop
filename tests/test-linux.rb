require 'open3'
require 'minitest/autorun'


class BaseTest < Minitest::Test
  def setup
    @command_list = []
  end

  def assert_command_exist(command)
    # system returns true if the command gives zero exit status, false for non
    # zero exit status. Returns nil if command execution fails. An error status
    # is available in $?.
    assert_equal system("which #{command} > /dev/null"), true
  end

  def test_command
    @command_list.each do |command|
      assert_command_exist(command)
    end
  end
end


class BasicRoleTest < BaseTest
  def setup
    @command_list = ['ag', 'cloc', 'editorconfig' 'htop', 'md5sum', 'mosh',
                     'ranger', 'rlwrap', 'wget', 'tmux', 'zsh']
  end
end


class CCRoleTest < BaseTest
  def setup
    @command_list = ['clang', 'cmake']
  end
end


class ClojureRoleTest < BaseTest
  def setup
    @command_list = ['lein']
  end
end


class JavaRoleTest < BaseTest
  def setup
    @command_list = ['gradle', 'java', 'javac', 'mvn']
  end
end


class JavaScriptRoleTest < BaseTest
  def setup
    @command_list = ['node', 'npm']
  end
end


class PythonRoleTest < BaseTest
  def setup
    @command_list = ['pip', 'pyenv', 'python']
  end
end


class RubyRoleTest < BaseTest
  def setup
    @command_list = ['bundle', 'gem', 'irb', 'rbenv', 'ruby']
  end
end


class VCSRoleTest < BaseTest
  def setup
    @command_list = ['cvs', 'hg', 'git', 'svn', 'tig']
  end
end
