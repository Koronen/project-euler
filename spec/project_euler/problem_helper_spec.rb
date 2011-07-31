require 'spec_helper'
require 'problem_helper'

describe Integer do
  it "calculates prime_factors correctly" do
    1.prime_factors.should eq([])
    2.prime_factors.should eq([2])
    6.prime_factors.should eq([2, 3])
    36.prime_factors.should eq([2, 2, 3, 3])
    220.prime_factors.should eq([2, 2, 5, 11])
    284.prime_factors.should eq([2, 2, 71])
  end

  it "calculates proper_divisors correctly" do
    1.proper_divisors.should eq([])
    2.proper_divisors.should eq([1])
    6.proper_divisors.should eq([1, 2, 3])
    36.proper_divisors.should eq([1, 2, 3, 4, 6, 9, 12, 18])
    220.proper_divisors.should eq([1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110])
    284.proper_divisors.should eq([1, 2, 4, 71, 142])
  end
end
