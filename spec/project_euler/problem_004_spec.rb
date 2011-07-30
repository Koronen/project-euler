require 'spec_helper'
require 'project_euler/problem_004'

describe ProjectEuler::Problem004 do
  before do
    @instance = ProjectEuler::Problem004.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(906609)
  end
end
