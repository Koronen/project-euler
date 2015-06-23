require_relative '../spec_helper'

require 'project_euler/problem_040'

describe ProjectEuler::Problem040 do
  subject { ProjectEuler::Problem040 }

  it 'calculates nth_fraction_digit correctly' do
    subject.nth_fraction_digit(1).must_equal 1
    subject.nth_fraction_digit(2).must_equal 2
    subject.nth_fraction_digit(10).must_equal 1 # 10
    subject.nth_fraction_digit(11).must_equal 0
    subject.nth_fraction_digit(30).must_equal 2 # 20
    subject.nth_fraction_digit(31).must_equal 0
    subject.nth_fraction_digit(90).must_equal 5 # 50
    subject.nth_fraction_digit(91).must_equal 0
    subject.nth_fraction_digit(188).must_equal 9 # 99
    subject.nth_fraction_digit(189).must_equal 9
    subject.nth_fraction_digit(190).must_equal 1 # 100
    subject.nth_fraction_digit(191).must_equal 0
    subject.nth_fraction_digit(192).must_equal 0
  end
end
