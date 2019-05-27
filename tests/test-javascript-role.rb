require 'base-test.rb'


class JavaScriptRoleTest < BaseTest
  def setup
    if self.homebrew_available?
      @command_list = ['node', 'npm']
    end

    @command_list += ['nodenv']
    @alias_list = ['npm-exec', 'ne']
  end
end
