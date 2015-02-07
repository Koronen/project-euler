require_relative '../spec_helper'

require 'project_euler/problem_024'

describe ProjectEuler::Problem024 do
  it 'gives the correct answer' do
    ProjectEuler::Problem024.answer.must_equal 2_783_915_460
  end
end
