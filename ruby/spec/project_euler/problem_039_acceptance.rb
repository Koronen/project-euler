require 'spec_helper'

require 'project_euler/problem_039'

describe ProjectEuler::Problem039 do
  it 'gives the correct answer' do
    ProjectEuler::Problem039.answer.must_equal 840
  end
end
