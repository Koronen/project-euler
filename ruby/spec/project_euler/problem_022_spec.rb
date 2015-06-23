require_relative '../spec_helper'

require 'project_euler/problem_022'

describe ProjectEuler::Problem022 do
  it 'calculates name_value correctly' do
    ProjectEuler::Problem022.name_value('').must_equal 0
    ProjectEuler::Problem022.name_value('COLIN').must_equal 53
  end
end
