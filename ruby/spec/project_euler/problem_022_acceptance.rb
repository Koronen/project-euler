require_relative '../spec_helper'

require 'project_euler/problem_022'

describe ProjectEuler::Problem022 do
  it 'gives the correct answer' do
    ProjectEuler::Problem022.answer.must_equal 871_198_282
  end
end
