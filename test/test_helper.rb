require 'test/unit'
require 'turn/autorun'
require 'rr'

require_relative '../lib/dag_optimization'

class Test::Unit::TestCase
  include DagOptimization
  include RR::Adapters::TestUnit
end
