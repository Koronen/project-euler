require 'spec_helper'
require 'problem_048'

module ProjectEuler
  describe Problem048 do
    it "gives the correct answer" do
      Problem048.answer.should eq(9110846700)
    end
  end
end
