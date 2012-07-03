class DagOptimization::Resource
  def initialize
    @files = []
  end
  def add_file(file)
    @files << file
  end

  def available?(file)
    @files.include? file
  end

  def submitted_jobs
  end
end


