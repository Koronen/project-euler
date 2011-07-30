require 'spec_helper'
require 'project_euler/problem_011'

describe ProjectEuler::Problem011 do
  before do
    @instance = ProjectEuler::Problem011.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(70600674)
  end
end
