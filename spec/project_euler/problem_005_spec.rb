require 'spec_helper'
require 'problem_005'

module ProjectEuler
  describe Problem005 do
    it "gives the correct answer" do
      Problem005.answer.should eq(232792560)
    end
  end
end
