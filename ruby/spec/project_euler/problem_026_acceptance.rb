require_relative '../spec_helper'

require 'project_euler/problem_026'

describe ProjectEuler::Problem026 do
  it 'gives the correct answer' do
    ProjectEuler::Problem026.answer.must_equal 983
  end
end
