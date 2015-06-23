require_relative '../spec_helper'

require 'project_euler/common_math'

describe ProjectEuler::CommonMath do
  class CommonMathDummy # :nodoc:
    extend ProjectEuler::CommonMath
  end

  subject { CommonMathDummy }

  it 'calculates prime_factors correctly' do
    subject.prime_factors(1).must_equal []
    subject.prime_factors(2).must_equal [2]
    subject.prime_factors(6).must_equal [2, 3]
    subject.prime_factors(36).must_equal [2, 2, 3, 3]
    subject.prime_factors(220).must_equal [2, 2, 5, 11]
    subject.prime_factors(284).must_equal [2, 2, 71]
  end

  it 'calculates proper_divisors correctly' do
    subject.proper_divisors(1).must_equal []
    subject.proper_divisors(2).must_equal [1]
    subject.proper_divisors(6).must_equal [1, 2, 3]
    subject.proper_divisors(36).must_equal [1, 2, 3, 4, 6, 9, 12, 18]
    subject.proper_divisors(220).
      must_equal [1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110]
    subject.proper_divisors(284).must_equal [1, 2, 4, 71, 142]
  end

  it 'calculates digits correctly' do
    subject.digits(1).must_equal [1]
    subject.digits(12).must_equal [1, 2]
    subject.digits(123).must_equal [1, 2, 3]
  end

  it 'calculates factorial correctly' do
    subject.factorial(0).must_equal 1
    subject.factorial(1).must_equal 1
    subject.factorial(2).must_equal 2
    subject.factorial(3).must_equal 6
    subject.factorial(4).must_equal 24
  end
end
