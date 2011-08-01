require 'spec_helper'
require 'problem_010'

module ProjectEuler
  describe Problem010 do
    it "gives the correct answer" do
      pending("skipped to speed up test suite (takes ~45s on a Core 2 Duo @2GHz)")
      Problem010.answer.should eq(142913828922)
    end
  end
end
