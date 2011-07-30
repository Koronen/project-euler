require 'spec_helper'
require 'project_euler/problem_003'

describe ProjectEuler::Problem003 do
  before do
    @instance = ProjectEuler::Problem003.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(6857)
  end
end
