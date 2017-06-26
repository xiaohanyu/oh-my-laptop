require 'base-test.rb'


class RubyRoleTest < BaseTest
  def setup
    @command_list = ['bundle', 'gem', 'irb', 'rbenv', 'ruby']
  end
end
