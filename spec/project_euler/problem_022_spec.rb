require 'spec_helper'
require 'problem_022'

module ProjectEuler
  describe Problem022 do
    it "calculates name_value correctly" do
      Problem022.name_value("").should eq(0)
      Problem022.name_value("COLIN").should eq(53)
    end

    it "gives the correct answer" do
      Problem022.answer.should eq(871198282)
    end
  end
end
