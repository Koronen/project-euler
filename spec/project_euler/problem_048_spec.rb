require 'spec_helper'

require 'project_euler/problem_048'

module ProjectEuler
  describe Problem048 do
    it_is_solvable_in_time { Problem048.answer }

    it "gives the correct answer" do
      Problem048.answer.should eq(9110846700)
    end
  end
end
