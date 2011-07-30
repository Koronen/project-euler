require 'spec_helper'
require 'project_euler/problem_014'

describe ProjectEuler::Problem014 do
  before do
    @instance = ProjectEuler::Problem014.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(837799)
  end
end
