require_relative '../spec_helper'

require 'project_euler/problem_009'

describe ProjectEuler::Problem009 do
  it 'gives the correct answer' do
    ProjectEuler::Problem009.answer.must_equal 31_875_000
  end
end
