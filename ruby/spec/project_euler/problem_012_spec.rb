require_relative '../spec_helper'

require 'project_euler/problem_012'

describe ProjectEuler::Problem012 do
  describe '.triangle_numbers' do
    it 'is an enumerator' do
      ProjectEuler::Problem012.triangle_numbers.must_be_kind_of Enumerator
    end

    it 'yields triangle numbers' do
      ProjectEuler::Problem012.triangle_numbers.take(5).
        must_equal [1, 3, 6, 10, 15]
    end
  end
end
