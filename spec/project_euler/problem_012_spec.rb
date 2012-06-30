require 'spec_helper'

require 'project_euler/problem_012'

module ProjectEuler
  describe Problem012 do
    it "currectly calculates sum to limit 1" do
      Problem012.sum_to_1(1).should eq(1)
      Problem012.sum_to_1(3).should eq(6)
      Problem012.sum_to_1(10).should eq(55)
    end

    it "gives the correct answer" do
      Problem012.answer.should eq(76576500)
    end
  end
end
