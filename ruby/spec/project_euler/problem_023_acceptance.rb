require_relative '../spec_helper'

require 'project_euler/problem_023'

describe ProjectEuler::Problem023 do
  it 'gives the correct answer' do
    ProjectEuler::Problem023.answer.must_equal 4_179_871
  end
end
