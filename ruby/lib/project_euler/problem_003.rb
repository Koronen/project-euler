require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #003.
  class Problem003 < ProblemBase
    def self.answer!
      n = 600_851_475_143

      Prime.each do |p|
        # if n is prime, it is the largest prime factor
        break if n.prime?

        # divide away all prime factors p
        n /= p while n % p == 0

        # if the quotient is smaller than the divisor (likely 1),
        # we should stop
        n = p if n < p
      end

      n
    end
  end
end
