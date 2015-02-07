require 'spec_helper'

require 'project_euler/problem_035'

describe ProjectEuler::Problem035 do
  it 'gives the correct answer' do
    ProjectEuler::Problem035.answer.must_equal 55
  end
end
