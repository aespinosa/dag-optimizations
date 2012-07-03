class DataSet
end

class Scheduler
  def submit(job)
    
  end
end

def input
  @input ||= DataSet.new
end

def scheduler
  @scheduler ||= Scheduler.new
end

def resource
  @resource ||= Resource.new
end

Given /^A job with an input dataset$/ do
  inputs = []
  inputs << input
  @job = Job.new(inputs)

  assert_includes @job.inputs, input
end

Given /^Its input is available on a resource$/ do
  resource.add_file input

  assert resource.available?(input), "#{input} not found in #{resource}"
end

When /^The job is submitted to the scheduler$/ do
  scheduler.submit @job
end

Then /^It is submitted to the resource that has its input data$/ do
  assert_equal @job, @resource.submitted_jobs
end
