require_relative '../spec_helper'

require 'project_euler/problem_028'

describe ProjectEuler::Problem028 do
  it 'calculates diagonal_sum correctly' do
    ProjectEuler::Problem028.diagonal_sum(1).must_equal 1
    ProjectEuler::Problem028.diagonal_sum(3).must_equal 25
    ProjectEuler::Problem028.diagonal_sum(5).must_equal 101
  end
end
