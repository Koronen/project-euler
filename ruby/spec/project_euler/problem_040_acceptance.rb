require_relative '../spec_helper'

require 'project_euler/problem_040'

describe ProjectEuler::Problem040 do
  it 'gives the correct answer' do
    ProjectEuler::Problem040.answer.must_equal 210
  end
end
