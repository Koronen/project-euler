require 'spec_helper'

require 'project_euler/problem_040'

module ProjectEuler
  describe Problem040 do
    it_is_solvable_in_time { Problem040.answer }

    it "calculates nth_fraction_digit correctly" do
      Problem040.nth_fraction_digit(1).should eq(1)
      Problem040.nth_fraction_digit(2).should eq(2)
      Problem040.nth_fraction_digit(10).should eq(1) #10
      Problem040.nth_fraction_digit(11).should eq(0)
      Problem040.nth_fraction_digit(30).should eq(2) #20
      Problem040.nth_fraction_digit(31).should eq(0)
      Problem040.nth_fraction_digit(90).should eq(5) #50
      Problem040.nth_fraction_digit(91).should eq(0)
      Problem040.nth_fraction_digit(188).should eq(9) #99
      Problem040.nth_fraction_digit(189).should eq(9)
      Problem040.nth_fraction_digit(190).should eq(1) #100
      Problem040.nth_fraction_digit(191).should eq(0)
      Problem040.nth_fraction_digit(192).should eq(0)
    end

    it "gives the correct answer" do
      Problem040.answer.should eq(210)
    end
  end
end
