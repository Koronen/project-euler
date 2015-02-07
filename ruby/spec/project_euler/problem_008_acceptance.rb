require_relative '../spec_helper'

require 'project_euler/problem_008'

describe ProjectEuler::Problem008 do
  it 'gives the correct answer' do
    ProjectEuler::Problem008.answer.must_equal 40_824
  end
end
