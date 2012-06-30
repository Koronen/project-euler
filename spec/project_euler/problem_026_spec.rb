require 'spec_helper'

require 'project_euler/problem_026'

module ProjectEuler
  describe Problem026 do
    #it_is_solvable_in_time { Problem026.answer }

    it "calculates fraction_recurring_cycle correctly" do
      pending("need to find a new way of extracting fractions")
      Problem026.fraction_recurring_cycle(1, 2).should be_nil # no recurring cycle
      Problem026.fraction_recurring_cycle(1, 3).should == "3"
      Problem026.fraction_recurring_cycle(1, 4).should be_nil
      Problem026.fraction_recurring_cycle(1, 5).should be_nil
      Problem026.fraction_recurring_cycle(1, 6).should == "6"
      Problem026.fraction_recurring_cycle(1, 7).should == "142857"
      Problem026.fraction_recurring_cycle(1, 8).should be_nil
      Problem026.fraction_recurring_cycle(1, 9).should == "1"
      Problem026.fraction_recurring_cycle(1, 10).should be_nil
    end

    it "gives the correct answer" do
      pending("need to find a new way of extracting fractions")
      Problem026.answer.should eq(0)
    end
  end
end
