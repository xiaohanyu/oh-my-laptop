require 'base-test.rb'


class JavaRoleTest < BaseTest
  def setup
    @command_list = ['gradle', 'java', 'javac', 'mvn']
  end
end
