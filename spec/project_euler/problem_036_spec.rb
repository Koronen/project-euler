require 'spec_helper'
require 'problem_036'

module ProjectEuler
  describe Problem036 do
    it "gives the correct answer" do
      Problem036.answer.should eq(872187)
    end
  end
end
