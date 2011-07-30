require 'spec_helper'
require 'project_euler/problem_001'

describe ProjectEuler::Problem001 do
  before do
    @instance = ProjectEuler::Problem001.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(233168)
  end
end
