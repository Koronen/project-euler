require 'spec_helper'
require 'project_euler/problem_021'

describe ProjectEuler::Problem021 do
  before do
    @instance = ProjectEuler::Problem021.new
  end

  it "calculates d correctly" do
    @instance.d(1).should be_nil
    @instance.d(2).should eq(1)
    @instance.d(6).should eq(6)
    @instance.d(36).should eq(55)
    @instance.d(220).should eq(284)
    @instance.d(284).should eq(220)
  end

  it "gives the correct answer" do
    @instance.answer.should eq(31626)
  end
end
