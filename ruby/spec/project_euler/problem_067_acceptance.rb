require_relative '../spec_helper'

require 'project_euler/problem_067'

describe ProjectEuler::Problem067 do
  it 'gives the correct answer' do
    ProjectEuler::Problem067.answer.must_equal 7_273
  end
end
