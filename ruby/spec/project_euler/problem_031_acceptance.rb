require_relative '../spec_helper'

require 'project_euler/problem_031'

describe ProjectEuler::Problem031 do
  it 'gives the correct answer' do
    ProjectEuler::Problem031.answer.must_equal 73_682
  end
end
