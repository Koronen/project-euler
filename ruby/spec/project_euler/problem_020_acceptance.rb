require_relative '../spec_helper'

require 'project_euler/problem_020'

describe ProjectEuler::Problem020 do
  it 'gives the correct answer' do
    ProjectEuler::Problem020.answer.must_equal 648
  end
end
