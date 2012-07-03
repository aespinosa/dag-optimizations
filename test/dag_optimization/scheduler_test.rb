require_relative '../test_helper'
require_relative '../../lib/dag_optimization/scheduler'

class SchedulerTest < Test::Unit::TestCase
  def test_manage_resource_adds_resources
    scheduler = Scheduler.new
    resource = Object.new
    scheduler.manage_resource resource

    assert_includes scheduler.resources, resource
  end
end
