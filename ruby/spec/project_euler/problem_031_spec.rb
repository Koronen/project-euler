require_relative '../spec_helper'

require 'project_euler/problem_031'

describe ProjectEuler::Problem031 do
  describe '.ways_to_make_amount_using_coins' do
    it 'calculates ways_to_make_amount_using_coins correctly' do
      ways_to_make_amount_using_coins = lambda do |amount, coins|
        ProjectEuler::Problem031.ways_to_make_amount_using_coins(amount, coins)
      end

      ways_to_make_amount_using_coins.call(0, []).must_equal 1
      ways_to_make_amount_using_coins.call(1, []).must_equal 0
      ways_to_make_amount_using_coins.call(1, [1]).must_equal 1
      ways_to_make_amount_using_coins.call(2, [1]).must_equal 1
      ways_to_make_amount_using_coins.call(3, [1, 2]).must_equal 2
      ways_to_make_amount_using_coins.call(5, [1, 2, 5]).must_equal 4
    end
  end
end
