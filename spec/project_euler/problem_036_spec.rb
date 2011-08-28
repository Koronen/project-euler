require 'spec_helper'
require 'problem_036'

module ProjectEuler
  describe Problem036 do
    it_is_solvable_in_time { Problem036.answer }

    it "gives the correct answer" do
      Problem036.answer.should eq(872187)
    end
  end
end
