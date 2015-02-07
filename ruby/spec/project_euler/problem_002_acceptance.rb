require_relative '../spec_helper'

require 'project_euler/problem_002'

describe ProjectEuler::Problem002 do
  it 'gives the correct answer' do
    ProjectEuler::Problem002.answer.must_equal 4_613_732
  end
end
