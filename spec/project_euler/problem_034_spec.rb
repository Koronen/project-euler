require 'spec_helper'

require 'project_euler/problem_034'

module ProjectEuler
  describe Problem034 do
    it "gives the correct answer", :slow => true do
      Problem034.answer.should eq(40730)
    end
  end
end
