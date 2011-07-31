require 'spec_helper'
require 'project_euler/problem_012'

describe ProjectEuler::Problem012 do
  before do
    @instance = ProjectEuler::Problem012.new
  end

  it "currectly calculates sum to limit 1" do
    @instance.sum_to_1(1).should eq(1)
    @instance.sum_to_1(3).should eq(6)
    @instance.sum_to_1(10).should eq(55)
  end

  it "gives the correct answer" do
    @instance.answer.should eq(76576500)
  end
end
