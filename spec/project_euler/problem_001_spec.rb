require 'spec_helper'
require 'problem_001'

module ProjectEuler
  describe Problem001 do
    it "gives the correct answer" do
      Problem001.answer.should eq(233168)
    end
  end
end
