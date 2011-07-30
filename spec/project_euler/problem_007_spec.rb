require 'spec_helper'
require 'project_euler/problem_007'

describe ProjectEuler::Problem007 do
  before do
    @instance = ProjectEuler::Problem007.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(104743)
  end
end
