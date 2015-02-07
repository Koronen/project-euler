require_relative '../spec_helper'

require 'project_euler/problem_021'

describe ProjectEuler::Problem021 do
  it 'gives the correct answer' do
    ProjectEuler::Problem021.answer.must_equal 31_626
  end
end
