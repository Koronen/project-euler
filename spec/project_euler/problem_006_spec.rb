require 'spec_helper'

require 'project_euler/problem_006'

module ProjectEuler
  describe Problem006 do
    it "gives the correct answer" do
      Problem006.answer.should eq(25164150)
    end
  end
end
