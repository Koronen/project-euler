require_relative '../spec_helper'

require 'project_euler/problem_010'

describe ProjectEuler::Problem010 do
  it 'gives the correct answer' do
    ProjectEuler::Problem010.answer.must_equal 142_913_828_922
  end
end
