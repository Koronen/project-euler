require 'spec_helper'
require 'project_euler/problem_022'

describe ProjectEuler::Problem022 do
  before do
    @instance = ProjectEuler::Problem022.new
  end

  it "calculates name_value correctly" do
    @instance.name_value("").should eq(0)
    @instance.name_value("COLIN").should eq(53)
  end

  it "gives the correct answer" do
    @instance.answer.should eq(871198282)
  end
end
