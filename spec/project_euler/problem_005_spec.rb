require 'spec_helper'
require 'project_euler/problem_005'

describe ProjectEuler::Problem005 do
  before do
    @instance = ProjectEuler::Problem005.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(232792560)
  end
end
