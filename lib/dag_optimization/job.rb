module DagOptimization
  class Job
    attr_reader :inputs

    def initialize(input)
      @inputs = input
    end
  end
end
