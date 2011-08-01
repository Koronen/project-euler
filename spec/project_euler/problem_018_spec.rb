require 'spec_helper'
require 'problem_018'

module ProjectEuler
  describe Problem018 do
    it "gives the correct answer" do
      Problem018.answer.should eq(1074)
    end
  end
end
