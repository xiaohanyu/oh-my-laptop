require 'base-test.rb'


class VCSRoleTest < BaseTest
  def setup
    @command_list = ['cvs', 'hg', 'git', 'svn', 'tig']
  end
end
