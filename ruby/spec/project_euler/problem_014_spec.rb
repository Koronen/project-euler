require_relative '../spec_helper'

require 'project_euler/problem_014'

module ProjectEuler
  describe Problem014 do
    it 'calculates chain length correctly' do
      Problem014.chain_length(1).must_equal 0
      Problem014.chain_length(2).must_equal 1
      Problem014.chain_length(3).must_equal 7
    end
  end
end
