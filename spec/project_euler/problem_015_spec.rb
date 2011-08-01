require 'spec_helper'
require 'problem_015'

module ProjectEuler
  describe Problem015 do
    it "gives the correct answer" do
      Problem015.answer.should eq(137846528820)
    end
  end
end
