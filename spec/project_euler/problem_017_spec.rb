require 'spec_helper'
require 'problem_017'

module ProjectEuler
  describe Problem017 do
    it "gives the correct answer" do
      Problem017.answer.should eq(21124)
    end
  end
end
