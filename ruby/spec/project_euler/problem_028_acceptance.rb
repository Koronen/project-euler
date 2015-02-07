require_relative '../spec_helper'

require 'project_euler/problem_028'

describe ProjectEuler::Problem028 do
  it 'gives the correct answer' do
    ProjectEuler::Problem028.answer.must_equal 669_171_001
  end
end
