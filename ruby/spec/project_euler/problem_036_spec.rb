require_relative '../spec_helper'

require 'project_euler/problem_036'

describe ProjectEuler::Problem036 do
  subject { ProjectEuler::Problem036 }

  it 'calculates binary_palindrome? correctly' do
    subject.binary_palindrome?(1).must_equal true
    subject.binary_palindrome?(2).must_equal false
    subject.binary_palindrome?(3).must_equal true
    subject.binary_palindrome?(4).must_equal false
    subject.binary_palindrome?(5).must_equal true
  end

  it 'calculates decimal_palindrome? correctly' do
    subject.decimal_palindrome?(1).must_equal true
    subject.decimal_palindrome?(10).must_equal false
    subject.decimal_palindrome?(11).must_equal true
    subject.decimal_palindrome?(101).must_equal true
    subject.decimal_palindrome?(102).must_equal false
  end
end
