require_relative '../spec_helper'

require 'project_euler/problem_013'

describe ProjectEuler::Problem013 do
  it 'gives the correct answer' do
    ProjectEuler::Problem013.answer.must_equal '5537376230'
  end
end
