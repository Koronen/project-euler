require 'spec_helper'

require 'project_euler/problem_019'

module ProjectEuler
  describe Problem019 do
    it "gives the correct answer" do
      Problem019.answer.should eq(171)
    end
  end
end
