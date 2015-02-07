require_relative '../spec_helper'

require 'project_euler/problem_011'

describe ProjectEuler::Problem011 do
  it 'gives the correct answer' do
    ProjectEuler::Problem011.answer.must_equal 70_600_674
  end
end
