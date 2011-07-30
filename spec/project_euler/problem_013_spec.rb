require 'spec_helper'
require 'project_euler/problem_013'

describe ProjectEuler::Problem013 do
  before do
    @instance = ProjectEuler::Problem013.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(5537376230)
  end
end
