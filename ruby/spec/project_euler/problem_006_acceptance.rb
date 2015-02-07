require_relative '../spec_helper'

require 'project_euler/problem_006'

describe ProjectEuler::Problem006 do
  it 'gives the correct answer' do
    ProjectEuler::Problem006.answer.must_equal 25_164_150
  end
end
