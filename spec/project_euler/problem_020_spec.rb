require 'spec_helper'
require 'project_euler/problem_020'

describe ProjectEuler::Problem020 do
  before do
    @instance = ProjectEuler::Problem020.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(648)
  end
end
