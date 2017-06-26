require 'base-test.rb'


class DockerRoleTest < BaseTest
  def setup
    @command_list = ['docker', 'docker-compose']
  end
end
