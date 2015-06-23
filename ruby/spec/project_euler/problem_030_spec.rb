require_relative '../spec_helper'

require 'project_euler/problem_030'

describe ProjectEuler::Problem030 do
  it 'calculates nth_power_digits_numbers correctly' do
    ProjectEuler::Problem030.nth_power_digits_numbers(4).
      must_equal [1634, 8208, 9474]
  end
end
