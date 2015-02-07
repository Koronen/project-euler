require_relative '../spec_helper'

require 'project_euler/problem_017'

describe ProjectEuler::Problem017 do
  it 'gives the correct answer' do
    ProjectEuler::Problem017.answer.must_equal 21_124
  end
end
