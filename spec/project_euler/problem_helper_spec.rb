require 'spec_helper'
require 'problem_helper'

describe Fixnum do
  it "calculates prime_factors correctly" do
    1.prime_factors.should == []
    2.prime_factors.should == [2]
    6.prime_factors.should == [2, 3]
    36.prime_factors.should == [2, 2, 3, 3]
    220.prime_factors.should == [2, 2, 5, 11]
    284.prime_factors.should == [2, 2, 71]
  end

  it "calculates proper_divisors correctly" do
    1.proper_divisors.should == []
    2.proper_divisors.should == [1]
    6.proper_divisors.should == [1, 2, 3]
    36.proper_divisors.should == [1, 2, 3, 4, 6, 9, 12, 18]
    220.proper_divisors.should == [1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110]
    284.proper_divisors.should == [1, 2, 4, 71, 142]
  end

  it "determines perfect? correctly" do
    1.should_not be_perfect
    6.should be_perfect
    10.should_not be_perfect
    28.should be_perfect
  end

  it "determines deficient? correctly" do
    1.should be_deficient
    10.should be_deficient
    28.should_not be_deficient
    30.should_not be_deficient
  end

  it "determines abundant? correctly" do
    1.should_not be_abundant
    10.should_not be_abundant
    12.should be_abundant
    28.should_not be_abundant
    30.should be_abundant
  end

  it "calculates digits correctly" do
    1.digits.should == [1]
    12.digits.should == [1,2]
    123.digits.should == [1,2,3]
  end

  it "calculates factorial correctly" do
    0.factorial.should == 1
    1.factorial.should == 1
    2.factorial.should == 2
    3.factorial.should == 6
    4.factorial.should == 24
  end
end
