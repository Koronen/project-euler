require_relative '../spec_helper'

require 'project_euler/problem_012'

module ProjectEuler
  describe Problem012 do
    it 'currectly calculates sum to limit 1' do
      Problem012.sum_to_1(1).must_equal 1
      Problem012.sum_to_1(3).must_equal 6
      Problem012.sum_to_1(10).must_equal 55
    end
  end
end
