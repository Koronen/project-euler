require_relative '../spec_helper'

require 'project_euler/problem_003'

describe ProjectEuler::Problem003 do
  it 'gives the correct answer' do
    ProjectEuler::Problem003.answer.must_equal 6_857
  end
end
