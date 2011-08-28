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

  it "determines perfect? correctly" do
    1.perfect?.should be_false
    6.perfect?.should be_true
    10.perfect?.should be_false
    28.perfect?.should be_true
  end

  it "determines deficient? correctly" do
    1.deficient?.should be_true
    10.deficient?.should be_true
    28.deficient?.should be_false
    30.deficient?.should be_false
  end

  it "determines abundant? correctly" do
    1.abundant?.should be_false
    10.abundant?.should be_false
    12.abundant?.should be_true
    28.abundant?.should be_false
    30.abundant?.should be_true
  end

  it "calculates digits correctly" do
    1.digits.should eq([1])
    12.digits.should eq([1,2])
    123.digits.should eq([1,2,3])
  end

  it "calculates factorial correctly" do
    0.factorial.should eq(1)
    1.factorial.should eq(1)
    2.factorial.should eq(2)
    3.factorial.should eq(6)
    4.factorial.should eq(24)
  end
end
