require 'spec_helper'

require 'project_euler/problem_026'

module ProjectEuler
  describe Problem026 do
    it 'calculates fraction_recurring_cycle correctly' do
      skip 'need to find a new way of extracting fractions'
      Problem026.fraction_recurring_cycle(1, 2).must_be_nil # no recurring cycle
      Problem026.fraction_recurring_cycle(1, 3).must_equal '3'
      Problem026.fraction_recurring_cycle(1, 4).must_be_nil
      Problem026.fraction_recurring_cycle(1, 5).must_be_nil
      Problem026.fraction_recurring_cycle(1, 6).must_equal '6'
      Problem026.fraction_recurring_cycle(1, 7).must_equal '142857'
      Problem026.fraction_recurring_cycle(1, 8).must_be_nil
      Problem026.fraction_recurring_cycle(1, 9).must_equal '1'
      Problem026.fraction_recurring_cycle(1, 10).must_be_nil
    end
  end
end
