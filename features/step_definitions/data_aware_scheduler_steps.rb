class DataSet
end

Given /^A job with an input dataset$/ do
  input = DataSet.new
  inputs = []
  inputs << input
  job = Job.new(inputs)

  assert_includes job.inputs, input
end
