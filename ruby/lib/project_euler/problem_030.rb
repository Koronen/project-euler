require 'project_euler/problem_base'

module ProjectEuler
  class Problem030 < ProjectEuler::ProblemBase
    class << self
      def digits_power_sum(n, power)
        sum = 0

        while n > 0
          sum += (n % 10)**power
          n /= 10
        end

        sum
      end

      def nth_power_digits_numbers(power)
        11.upto(1_000_000).select{|n| n == self.digits_power_sum(n, power) }
      end

      def answer!
        self.nth_power_digits_numbers(5).inject(&:+)
      end
    end
  end
end
