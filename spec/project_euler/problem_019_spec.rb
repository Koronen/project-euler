require 'spec_helper'
require 'project_euler/problem_019'

describe ProjectEuler::Problem019 do
  before do
    @instance = ProjectEuler::Problem019.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(171)
  end
end
