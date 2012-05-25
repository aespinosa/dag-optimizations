require 'simgrid'

class DataAwareClient

  def main
    jobs = read_workload

    jobs.each do |job|
      case job.status
      when :finished
        job.outputs.each { |output| MetaData.register output, job.host }
        job.children.each { |child| child.status = :ready }
      when :ready
        workers = job.inputs.each do |input|
          source = @meta_data.find input
          unless head_nodes.member? source
            worker = find_free_worker
            source.send input, worker
            job.submit worker
          else
            job.submit source
          end
        end
      else
        next
      end
    end
  end
end

class Job

  def initialize(name, options = {})
    @inputs = options[:inputs] || {}
    @outputs = options[:outputs] || {}
  end
end

class Worker

  def transfer(data)
  end

  def receive(job)
  end

end

class MetaData

  def self.find(filename)
  end

  def self.register(filename, location)
  end
end
