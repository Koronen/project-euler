require 'spec_helper'
require 'project_euler/problem_018'

describe ProjectEuler::Problem018 do
  before do
    @instance = ProjectEuler::Problem018.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(1074)
  end
end
