require_relative '../spec_helper'

require 'project_euler/problem_015'

describe ProjectEuler::Problem015 do
  it 'gives the correct answer' do
    ProjectEuler::Problem015.answer.must_equal 137_846_528_820
  end
end
