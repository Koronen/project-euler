require_relative '../spec_helper'

require 'project_euler/problem_034'

describe ProjectEuler::Problem034 do
  it 'gives the correct answer' do
    ProjectEuler::Problem034.answer.must_equal 40_730
  end
end
