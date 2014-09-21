class DagOptimization::Scheduler
  attr_reader :resources
  def initialize
    @resources = []
  end

  def submit(job)
    
  end

  def manage_resource(resource)
    @resources << resource
  end
end


