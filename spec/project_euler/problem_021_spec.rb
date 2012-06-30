require 'spec_helper'

require 'project_euler/problem_021'

module ProjectEuler
  describe Problem021 do
    it 'calculates d correctly' do
      Problem021.d(1).must_equal 0
      Problem021.d(2).must_equal 1
      Problem021.d(6).must_equal 6
      Problem021.d(36).must_equal 55
      Problem021.d(220).must_equal 284
      Problem021.d(284).must_equal 220
    end
  end
end
