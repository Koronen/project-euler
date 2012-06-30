require 'spec_helper'

require 'project_euler/problem_helper'

describe Fixnum do
  it 'calculates prime_factors correctly' do
    1.prime_factors.must_equal []
    2.prime_factors.must_equal [2]
    6.prime_factors.must_equal [2, 3]
    36.prime_factors.must_equal [2, 2, 3, 3]
    220.prime_factors.must_equal [2, 2, 5, 11]
    284.prime_factors.must_equal [2, 2, 71]
  end

  it 'calculates proper_divisors correctly' do
    1.proper_divisors.must_equal []
    2.proper_divisors.must_equal [1]
    6.proper_divisors.must_equal [1, 2, 3]
    36.proper_divisors.must_equal [1, 2, 3, 4, 6, 9, 12, 18]
    220.proper_divisors.must_equal [1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110]
    284.proper_divisors.must_equal [1, 2, 4, 71, 142]
  end

  it 'calculates digits correctly' do
    1.digits.must_equal [1]
    12.digits.must_equal [1,2]
    123.digits.must_equal [1,2,3]
  end

  it 'calculates factorial correctly' do
    0.factorial.must_equal 1
    1.factorial.must_equal 1
    2.factorial.must_equal 2
    3.factorial.must_equal 6
    4.factorial.must_equal 24
  end
end
