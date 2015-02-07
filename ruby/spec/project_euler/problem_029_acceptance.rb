require_relative '../spec_helper'

require 'project_euler/problem_029'

describe ProjectEuler::Problem029 do
  it 'gives the correct answer' do
    ProjectEuler::Problem029.answer.must_equal 9_183
  end
end
