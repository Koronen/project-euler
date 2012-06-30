require 'spec_helper'

require 'project_euler/problem_007'

module ProjectEuler
  describe Problem007 do
    it "gives the correct answer" do
      Problem007.answer.should eq(104743)
    end
  end
end
