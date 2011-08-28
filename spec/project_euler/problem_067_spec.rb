require 'spec_helper'
require 'problem_067'

module ProjectEuler
  describe Problem067 do
    it_is_solvable_in_time { Problem067.answer }

    it "gives the correct answer" do
      Problem067.answer.should eq(7273)
    end
  end
end
