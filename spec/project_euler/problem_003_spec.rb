require 'spec_helper'

require 'project_euler/problem_003'

module ProjectEuler
  describe Problem003 do
    it "gives the correct answer" do
      Problem003.answer.should eq(6857)
    end
  end
end
