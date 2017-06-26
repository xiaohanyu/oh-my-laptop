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
