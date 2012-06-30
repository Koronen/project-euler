require 'spec_helper'

require 'project_euler/problem_029'

module ProjectEuler
  describe Problem029 do
    it 'calculates distinct_sequence_terms correctly' do
      Problem029.distinct_sequence_terms(2, 5).length.must_equal 15
    end
  end
end
