require 'spec_helper'

require 'project_euler/problem_037'

describe ProjectEuler::Problem037 do
  describe '.truncations_of' do
    it 'calculates truncations correctly' do
      ProjectEuler::Problem037.truncations_of(3797).sort.
        must_equal [797, 97, 7, 379, 37, 3].sort
    end
  end
end
