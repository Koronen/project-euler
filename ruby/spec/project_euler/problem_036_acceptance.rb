require_relative '../spec_helper'

require 'project_euler/problem_036'

describe ProjectEuler::Problem036 do
  it 'gives the correct answer' do
    ProjectEuler::Problem036.answer.must_equal 872_187
  end
end
