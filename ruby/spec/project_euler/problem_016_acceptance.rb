require_relative '../spec_helper'

require 'project_euler/problem_016'

describe ProjectEuler::Problem016 do
  it 'gives the correct answer' do
    ProjectEuler::Problem016.answer.must_equal 1_366
  end
end
