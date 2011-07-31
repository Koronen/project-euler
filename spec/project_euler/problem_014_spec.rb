require 'spec_helper'
require 'project_euler/problem_014'

describe ProjectEuler::Problem014 do
  before do
    @instance = ProjectEuler::Problem014.new
  end

  it "calculates chain length correctly" do
    @instance.chain_length(1).should eq(0)
    @instance.chain_length(2).should eq(1)
    @instance.chain_length(3).should eq(7)
  end

  it "gives the correct answer" do
    @instance.answer.should eq(837799)
  end
end
