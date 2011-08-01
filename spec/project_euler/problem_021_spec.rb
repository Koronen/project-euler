require 'spec_helper'
require 'problem_021'

module ProjectEuler
  describe Problem021 do
    it "calculates d correctly" do
      Problem021.d(1).should eq(0)
      Problem021.d(2).should eq(1)
      Problem021.d(6).should eq(6)
      Problem021.d(36).should eq(55)
      Problem021.d(220).should eq(284)
      Problem021.d(284).should eq(220)
    end

    it "gives the correct answer" do
      Problem021.answer.should eq(31626)
    end
  end
end
