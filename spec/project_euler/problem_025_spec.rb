require 'spec_helper'
require 'problem_025'

module ProjectEuler
  describe Problem025 do
    it "gives the correct answer" do
      Problem025.answer.should eq(4782)
    end
  end
end
