require 'spec_helper'
require 'problem_014'

module ProjectEuler
  describe Problem014 do
    it "calculates chain length correctly" do
      Problem014.chain_length(1).should eq(0)
      Problem014.chain_length(2).should eq(1)
      Problem014.chain_length(3).should eq(7)
    end

    it "gives the correct answer" do
      pending("skipped to speed up test suite (takes ~1m on a Core 2 Duo @2GHz)")
      Problem014.answer.should eq(837799)
    end
  end
end
