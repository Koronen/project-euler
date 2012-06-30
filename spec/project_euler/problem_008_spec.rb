require 'spec_helper'

require 'project_euler/problem_008'

module ProjectEuler
  describe Problem008 do
    it "gives the correct answer" do
      Problem008.answer.should eq(40824)
    end
  end
end
