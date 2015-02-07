require_relative '../spec_helper'

require 'project_euler/problem_012'

describe ProjectEuler::Problem012 do
  it 'gives the correct answer' do
    ProjectEuler::Problem012.answer.must_equal 76_576_500
  end
end
