require 'spec_helper'
require 'project_euler/problem_010'

describe ProjectEuler::Problem010 do
  before do
    @instance = ProjectEuler::Problem010.new
  end

  it "gives the correct answer" do
    pending("skipped to speed up test suite (takes ~45s on a Core 2 Duo @2GHz)")
    @instance.answer.should eq(142913828922)
  end
end
