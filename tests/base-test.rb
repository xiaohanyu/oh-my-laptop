require 'open3'
require 'minitest/autorun'


class BaseTest < Minitest::Test
  def setup
    @command_list = []
    @alias_list = []
  end

  def apt_get_available?
    return system('which apt-get > /dev/null')
  end

  def homebrew_available?
    return system('which brew > /dev/null')
  end

  def assert_command_exist(command)
    # system returns true if the command gives zero exit status, false for non
    # zero exit status. Returns nil if command execution fails. An error status
    # is available in $?.
    assert_equal system("which #{command} > /dev/null"), true
  end

  def assert_alias_exist(command)
    assert_equal system("which #{command} > /dev/null"), true
  end

  def test_command
    unless @command_list.nil?
      @command_list.each do |command|
        assert_command_exist(command)
      end
    end
  end

  def test_alias
    unless @alias_list.nil?
      @alias_list.each do |als|
        assert_alias_exist(als)
      end
    end
  end
end
