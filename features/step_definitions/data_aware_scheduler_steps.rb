class DataSet
end

def input
  @input ||= DataSet.new
end

Given /^A job with an input dataset$/ do
  inputs = []
  inputs << input
  job = Job.new(inputs)

  assert_includes job.inputs, input
end

Given /^Its input is available on a resource$/ do
  resource = Resource.new
  resource.add_file input

  assert resource.available?(input), "#{input} not found in #{resource}"
end
