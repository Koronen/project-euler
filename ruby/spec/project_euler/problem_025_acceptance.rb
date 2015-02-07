require_relative '../spec_helper'

require 'project_euler/problem_025'

describe ProjectEuler::Problem025 do
  it 'gives the correct answer' do
    ProjectEuler::Problem025.answer.must_equal 4_782
  end
end
