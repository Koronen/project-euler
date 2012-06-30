require 'spec_helper'

require 'project_euler/problem_036'

module ProjectEuler
  describe Problem036 do
    it 'calculates binary_palindrome? correctly' do
      Problem036.binary_palindrome?(1).must_equal true
      Problem036.binary_palindrome?(2).must_equal false
      Problem036.binary_palindrome?(3).must_equal true
      Problem036.binary_palindrome?(4).must_equal false
      Problem036.binary_palindrome?(5).must_equal true
    end

    it 'calculates decimal_palindrome? correctly' do
      Problem036.decimal_palindrome?(1).must_equal true
      Problem036.decimal_palindrome?(10).must_equal false
      Problem036.decimal_palindrome?(11).must_equal true
      Problem036.decimal_palindrome?(101).must_equal true
      Problem036.decimal_palindrome?(102).must_equal false
    end
  end
end
