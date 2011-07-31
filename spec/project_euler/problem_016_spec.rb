require 'spec_helper'
require 'project_euler/problem_016'

describe ProjectEuler::Problem016 do
  before do
    @instance = ProjectEuler::Problem016.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(1366)
  end
end
