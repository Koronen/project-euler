require_relative '../spec_helper'

require 'project_euler/problem_048'

describe ProjectEuler::Problem048 do
  it 'gives the correct answer' do
    ProjectEuler::Problem048.answer.must_equal 9_110_846_700
  end
end
