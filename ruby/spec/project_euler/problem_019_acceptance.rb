require_relative '../spec_helper'

require 'project_euler/problem_019'

describe ProjectEuler::Problem019 do
  it 'gives the correct answer' do
    ProjectEuler::Problem019.answer.must_equal 171
  end
end
