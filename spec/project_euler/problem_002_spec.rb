require 'spec_helper'
require 'project_euler/problem_002'

describe ProjectEuler::Problem002 do
  before do
    @instance = ProjectEuler::Problem002.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(4613732)
  end
end
