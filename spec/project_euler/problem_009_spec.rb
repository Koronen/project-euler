require 'spec_helper'

require 'project_euler/problem_009'

module ProjectEuler
  describe Problem009 do
    it "gives the correct answer" do
      Problem009.answer.should eq(31875000)
    end
  end
end
