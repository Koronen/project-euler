require 'spec_helper'
require 'project_euler/problem_021'

describe ProjectEuler::Problem021 do
  before do
    @instance = ProjectEuler::Problem021.new
  end

  it "calculates prime_factors correctly" do
    @instance.prime_factors(1).should eq([])
    @instance.prime_factors(2).should eq([2])
    @instance.prime_factors(6).should eq([2, 3])
    @instance.prime_factors(36).should eq([2, 2, 3, 3])
    @instance.prime_factors(220).should eq([2, 2, 5, 11])
    @instance.prime_factors(284).should eq([2, 2, 71])
  end

  it "calculates proper_divisors correctly" do
    @instance.proper_divisors(1).should eq([])
    @instance.proper_divisors(2).should eq([1])
    @instance.proper_divisors(6).should eq([1, 2, 3])
    @instance.proper_divisors(36).should eq([1, 2, 3, 4, 6, 9, 12, 18])
    @instance.proper_divisors(220).should eq([1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110])
    @instance.proper_divisors(284).should eq([1, 2, 4, 71, 142])
  end

  it "calculates d correctly" do
    @instance.d(1).should be_nil
    @instance.d(2).should eq(1)
    @instance.d(6).should eq(6)
    @instance.d(36).should eq(55)
    @instance.d(220).should eq(284)
    @instance.d(284).should eq(220)
  end

  it "gives the correct answer" do
    @instance.answer.should eq(31626)
  end
end
