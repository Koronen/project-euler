require_relative '../spec_helper'

require 'project_euler/problem_031'

module ProjectEuler
  describe Problem031 do
    it 'calculates ways_to_make correctly' do
      Problem031.ways_to_make(0).must_equal 1
      Problem031.ways_to_make(1).must_equal 1
      Problem031.ways_to_make(2).must_equal 2
      Problem031.ways_to_make(3).must_equal 2
      Problem031.ways_to_make(4).must_equal 3
      Problem031.ways_to_make(5).must_equal 4
    end

    it 'calculates ways_to_make_amount_using_coins correctly' do
      Problem031.ways_to_make_amount_using_coins(0, []).must_equal 1
      Problem031.ways_to_make_amount_using_coins(1, []).must_equal 0
      Problem031.ways_to_make_amount_using_coins(1, [1]).must_equal 1
      Problem031.ways_to_make_amount_using_coins(2, [1]).must_equal 1
      Problem031.ways_to_make_amount_using_coins(3, [1, 2]).must_equal 2
      Problem031.ways_to_make_amount_using_coins(5, [1, 2, 5]).must_equal 4
    end
  end
end
