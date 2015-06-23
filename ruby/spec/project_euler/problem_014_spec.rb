require_relative '../spec_helper'

require 'project_euler/problem_014'

describe ProjectEuler::Problem014 do
  describe '#chain_length' do
    it 'calculates chain lengths correctly' do
      p14 = ProjectEuler::Problem014.new

      p14.chain_length(1).must_equal 0
      p14.chain_length(2).must_equal 1
      p14.chain_length(3).must_equal 7
    end
  end
end
