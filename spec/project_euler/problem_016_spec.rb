require 'spec_helper'

require 'project_euler/problem_016'

module ProjectEuler
  describe Problem016 do
    it "gives the correct answer" do
      Problem016.answer.should eq(1366)
    end
  end
end
