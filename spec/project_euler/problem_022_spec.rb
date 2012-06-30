require 'spec_helper'

require 'project_euler/problem_022'

module ProjectEuler
  describe Problem022 do
    it 'calculates name_value correctly' do
      Problem022.name_value('').must_equal 0
      Problem022.name_value('COLIN').must_equal 53
    end
  end
end
