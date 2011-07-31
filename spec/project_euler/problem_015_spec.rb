require 'spec_helper'
require 'project_euler/problem_015'

describe ProjectEuler::Problem015 do
  before do
    @instance = ProjectEuler::Problem015.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(137846528820)
  end
end
