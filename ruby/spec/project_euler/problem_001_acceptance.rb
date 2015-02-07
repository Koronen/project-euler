require_relative '../spec_helper'

require 'project_euler/problem_001'

describe ProjectEuler::Problem001 do
  it 'gives the correct answer' do
    ProjectEuler::Problem001.answer.must_equal 233_168
  end
end
