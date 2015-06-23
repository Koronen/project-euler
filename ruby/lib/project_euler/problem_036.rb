require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #036.
  class Problem036 < ProjectEuler::ProblemBase
    class << self
      def binary_palindrome?(n)
        return false if n.even?
        n.to_s(2).reverse == n.to_s(2)
      end

      def decimal_palindrome?(n)
        n.to_s(10).reverse == n.to_s(10)
      end

      def answer!
        1.upto(999_999).
          select { |n| binary_palindrome?(n) && decimal_palindrome?(n) }.
          inject(0, :+)
      end
    end
  end
end
