require_relative '../spec_helper'

require 'project_euler/problem_042'

describe ProjectEuler::Problem042 do
  it 'gives the correct answer' do
    ProjectEuler::Problem042.answer.must_equal 162
  end
end
