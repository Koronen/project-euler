require_relative '../spec_helper'

require 'project_euler/problem_005'

describe ProjectEuler::Problem005 do
  it 'gives the correct answer' do
    ProjectEuler::Problem005.answer.must_equal 232_792_560
  end
end
