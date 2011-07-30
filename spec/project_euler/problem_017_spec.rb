require 'spec_helper'
require 'project_euler/problem_017'

describe ProjectEuler::Problem017 do
  before do
    @instance = ProjectEuler::Problem017.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(21124)
  end
end
