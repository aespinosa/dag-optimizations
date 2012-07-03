require 'test/unit'
require './lib/dag_optimization/job'

class JobTest
  class InputsContext < Test::Unit::TestCase
    include DagOptimization

    def test_should_include_input_dataset
      input = Object.new
      inputs = []
      inputs << input

      job = Job.new(inputs)

      assert_includes job.inputs, input
    end
  end
end
