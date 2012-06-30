require 'spec_helper'

require 'project_euler/problem_028'

module ProjectEuler
  describe Problem028 do
    it_is_solvable_in_time { Problem028.answer }

    it 'calculates diagonal_sum correctly' do
      Problem028.diagonal_sum(1).should eq(1)
      Problem028.diagonal_sum(3).should eq(25)
      Problem028.diagonal_sum(5).should eq(101)
    end

    it 'gives the correct answer' do
      Problem028.answer.should eq(669171001)
    end
  end
end
