require_relative '../test_helper'
require_relative '../../lib/dag_optimization/resource'

class ResourceTest < Test::Unit::TestCase
  def test_add_file_makes_file_available
    resource = Resource.new
    file = Object.new
    resource.add_file file

    assert resource.available?(file), "#{file} not found in #{resource}"
  end
end
