require_relative '../spec_helper'

require 'project_euler/problem_004'

describe ProjectEuler::Problem004 do
  it 'gives the correct answer' do
    ProjectEuler::Problem004.answer.must_equal 906_609
  end
end
