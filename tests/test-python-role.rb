require 'base-test.rb'


class PythonRoleTest < BaseTest
  def setup
    @command_list = ['pip', 'pyenv', 'python']
  end
end
