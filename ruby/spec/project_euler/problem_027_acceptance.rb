require_relative '../spec_helper'

require 'project_euler/problem_027'

describe ProjectEuler::Problem027 do
  it 'gives the correct answer' do
    ProjectEuler::Problem027.answer.must_equal -59_231
  end
end
