require 'spec_helper'

require 'project_euler/problem_045'

describe ProjectEuler::Problem045 do
  it 'gives the correct answer' do
    ProjectEuler::Problem045.answer.must_equal 1_533_776_805
  end
end
