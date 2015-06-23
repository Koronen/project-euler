require_relative '../spec_helper'

require 'project_euler/problem_026'

describe ProjectEuler::Problem026 do
  subject { ProjectEuler::Problem026 }

  it 'calculates fraction_recurring_cycle correctly' do
    subject.unit_fraction_cycle_length(2).must_equal 1
    subject.unit_fraction_cycle_length(3).must_equal 1
    subject.unit_fraction_cycle_length(4).must_equal 2
    subject.unit_fraction_cycle_length(5).must_equal 1
    subject.unit_fraction_cycle_length(6).must_equal 1
    subject.unit_fraction_cycle_length(7).must_equal 6
    subject.unit_fraction_cycle_length(8).must_equal 3
    subject.unit_fraction_cycle_length(9).must_equal 1
    subject.unit_fraction_cycle_length(10).must_equal 1
  end
end
