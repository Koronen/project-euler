require_relative '../spec_helper'

require 'project_euler/problem_007'

describe ProjectEuler::Problem007 do
  it 'gives the correct answer' do
    ProjectEuler::Problem007.answer.must_equal 104_743
  end
end
