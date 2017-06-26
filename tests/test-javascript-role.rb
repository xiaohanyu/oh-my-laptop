require 'base-test.rb'


class JavaScriptRoleTest < BaseTest
  def setup
    if self.apt_get_available?
      @command_list = ['nodejs', 'npm']
    elsif self.homebrew_available?
      @command_list = ['node', 'npm']
    end
  end
end
