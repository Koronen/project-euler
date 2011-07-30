require 'spec_helper'
require 'project_euler/problem_008'

describe ProjectEuler::Problem008 do
  before do
    @instance = ProjectEuler::Problem008.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(40824)
  end
end
