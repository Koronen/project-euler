require 'spec_helper'
require 'problem_067'

module ProjectEuler
  describe Problem067 do
    it "gives the correct answer" do
      Problem067.answer.should eq(7273)
    end
  end
end
