require_relative '../spec_helper'

require 'project_euler/problem_021'

describe ProjectEuler::Problem021 do
  describe '#d' do
    it 'calculates d correctly' do
      p21 = ProjectEuler::Problem021.new

      p21.d(1).must_equal 0
      p21.d(2).must_equal 1
      p21.d(6).must_equal 6
      p21.d(36).must_equal 55
      p21.d(220).must_equal 284
      p21.d(284).must_equal 220
    end
  end
end
