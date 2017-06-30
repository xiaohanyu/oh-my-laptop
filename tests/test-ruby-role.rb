require 'base-test.rb'


class RubyRoleTest < BaseTest
  def setup
    @command_list = ['bundle', 'gem', 'irb', 'rbenv', 'ruby']
    @alias_list = ['b', 'be']
  end
end
