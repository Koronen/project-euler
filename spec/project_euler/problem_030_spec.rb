require 'spec_helper'
require 'problem_030'

module ProjectEuler
  describe Problem030 do
    it "calculates nth_power_digits_numbers correctly" do
      Problem030.nth_power_digits_numbers(4).should eq([1634, 8208, 9474])
    end

    it "gives the correct answer" do
      Problem030.answer.should eq(443839)
    end
  end
end
