require_relative '../test_helper'

class JobTest
  class InputsContext < Test::Unit::TestCase

    def test_should_include_input_dataset
      input = Object.new
      inputs = []
      inputs << input

      job = Job.new(inputs)

      assert_includes job.inputs, input
    end
  end
end
