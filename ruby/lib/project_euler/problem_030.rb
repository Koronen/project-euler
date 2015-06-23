require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #030.
  class Problem030 < ProblemBase
    def self.answer!
      nth_power_digits_numbers(5).inject(0, :+)
    end

    def self.nth_power_digits_numbers(power)
      11.upto(1_000_000).select { |n| n == digits_power_sum(n, power) }
    end

    def self.digits_power_sum(n, power)
      sum = 0

      while n > 0
        sum += (n % 10)**power
        n /= 10
      end

      sum
    end
  end
end
