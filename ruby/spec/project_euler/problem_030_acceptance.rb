require_relative '../spec_helper'

require 'project_euler/problem_030'

describe ProjectEuler::Problem030 do
  it 'gives the correct answer' do
    ProjectEuler::Problem030.answer.must_equal 443_839
  end
end
