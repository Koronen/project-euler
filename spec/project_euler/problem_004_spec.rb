require 'spec_helper'

require 'project_euler/problem_004'

module ProjectEuler
  describe Problem004 do
    it "gives the correct answer" do
      Problem004.answer.should eq(906609)
    end
  end
end
