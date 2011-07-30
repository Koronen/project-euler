require 'spec_helper'
require 'project_euler/problem_006'

describe ProjectEuler::Problem006 do
  before do
    @instance = ProjectEuler::Problem006.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(25164150)
  end
end
