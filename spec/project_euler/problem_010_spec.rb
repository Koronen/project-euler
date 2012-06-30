require 'spec_helper'

require 'project_euler/problem_010'

module ProjectEuler
  describe Problem010 do
    it "gives the correct answer", :slow => true do
      Problem010.answer.should eq(142913828922)
    end
  end
end
