require 'spec_helper'
require 'project_euler/problem_025'

describe ProjectEuler::Problem025 do
  before do
    @instance = ProjectEuler::Problem025.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(4782)
  end
end
