module DagOptimization
  class Job
    attr_reader :inputs

    def initialize(input)
      @inputs = input
    end

    def ran_on
    end
  end
end
