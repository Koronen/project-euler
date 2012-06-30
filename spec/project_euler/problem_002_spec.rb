require 'spec_helper'

require 'project_euler/problem_002'

module ProjectEuler
  describe Problem002 do
    it "gives the correct answer" do
      Problem002.answer.should eq(4613732)
    end
  end
end
