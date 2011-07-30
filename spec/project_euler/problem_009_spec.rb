require 'spec_helper'
require 'project_euler/problem_009'

describe ProjectEuler::Problem009 do
  before do
    @instance = ProjectEuler::Problem009.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(31875000)
  end
end
