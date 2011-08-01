require 'spec_helper'
require 'problem_020'

module ProjectEuler
  describe Problem020 do
    it "gives the correct answer" do
      Problem020.answer.should eq(648)
    end
  end
end
