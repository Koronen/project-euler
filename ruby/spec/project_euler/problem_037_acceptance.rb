require 'spec_helper'

require 'project_euler/problem_037'

describe ProjectEuler::Problem037 do
  it 'gives the correct answer' do
    ProjectEuler::Problem037.answer.must_equal 748_317
  end
end
