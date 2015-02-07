require_relative '../spec_helper'

require 'project_euler/problem_018'

describe ProjectEuler::Problem018 do
  it 'gives the correct answer' do
    ProjectEuler::Problem018.answer.must_equal 1_074
  end
end
