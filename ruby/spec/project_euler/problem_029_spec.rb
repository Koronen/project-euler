require_relative '../spec_helper'

require 'project_euler/problem_029'

describe ProjectEuler::Problem029 do
  it 'calculates distinct_sequence_terms correctly' do
    ProjectEuler::Problem029.distinct_sequence_terms(2, 5).length.must_equal 15
  end
end
