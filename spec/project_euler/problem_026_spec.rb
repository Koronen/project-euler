require 'spec_helper'

require 'project_euler/problem_026'

module ProjectEuler
  describe Problem026 do
    it 'calculates fraction_recurring_cycle correctly' do
      Problem026.unit_fraction_cycle_length(2).must_equal 1
      Problem026.unit_fraction_cycle_length(3).must_equal 1
      Problem026.unit_fraction_cycle_length(4).must_equal 2
      Problem026.unit_fraction_cycle_length(5).must_equal 1
      Problem026.unit_fraction_cycle_length(6).must_equal 1
      Problem026.unit_fraction_cycle_length(7).must_equal 6
      Problem026.unit_fraction_cycle_length(8).must_equal 3
      Problem026.unit_fraction_cycle_length(9).must_equal 1
      Problem026.unit_fraction_cycle_length(10).must_equal 1
    end
  end
end
