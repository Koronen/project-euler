require_relative '../spec_helper'

require 'project_euler/problem_014'

describe ProjectEuler::Problem014 do
  it 'gives the correct answer' do
    ProjectEuler::Problem014.answer.must_equal 837_799
  end
end
