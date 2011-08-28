require 'spec_helper'
require 'problem_023'

module ProjectEuler
  describe Problem023 do
    it_is_solvable_in_time { Problem023.answer }

    it "gives the correct answer", :slow => true do
      Problem023.answer.should eq(276)
    end
  end
end
