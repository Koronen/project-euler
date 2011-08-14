require 'spec_helper'
require 'problem_029'

module ProjectEuler
  describe Problem029 do
    it "calculates distinct_sequence_terms correctly" do
      Problem029.distinct_sequence_terms(2, 5).length.should eq(15)
    end

    it "gives the correct answer" do
      Problem029.answer.should eq(9183)
    end
  end
end
