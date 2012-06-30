require 'spec_helper'

require 'project_euler/problem_028'

module ProjectEuler
  describe Problem028 do
    it 'calculates diagonal_sum correctly' do
      Problem028.diagonal_sum(1).must_equal 1
      Problem028.diagonal_sum(3).must_equal 25
      Problem028.diagonal_sum(5).must_equal 101
    end
  end
end
