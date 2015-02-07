require_relative '../spec_helper'

require 'project_euler/problem_013'

describe ProjectEuler::Problem013 do
  it 'gives the correct answer' do
    ProjectEuler::Problem013.answer.must_equal 5_537_376_230
  end
end
