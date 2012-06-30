require 'spec_helper'

require 'project_euler/problem_014'

module ProjectEuler
  describe Problem014 do
    it "calculates chain length correctly" do
      Problem014.chain_length(1).should eq(0)
      Problem014.chain_length(2).should eq(1)
      Problem014.chain_length(3).should eq(7)
    end

    it "gives the correct answer", :slow => true do
      Problem014.answer.should eq(837799)
    end
  end
end
