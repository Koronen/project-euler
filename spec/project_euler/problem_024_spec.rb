require 'spec_helper'
require 'problem_024'

module ProjectEuler
  describe Problem024 do
    it "gives the correct answer", :slow => true do
      Problem024.answer.should eq(2783915460)
    end
  end
end
