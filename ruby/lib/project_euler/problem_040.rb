require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #040.
  class Problem040 < ProjectEuler::ProblemBase
    class << self
      # 0.12345678910111213141516...
      # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
      def nth_fraction_digit(n)
        return n if n < 10

        digits_in_number = 1
        digits_total = 9
        loop do
          digits_in_number += 1
          low = digits_total + 1
          high = low + digits_in_number * (9 * (10**(digits_in_number - 1))) - 1
          if n >= low && n <= high
            range_index = n - low
            number_index = (range_index / digits_in_number.to_f).floor
            digit_index = range_index % digits_in_number
            number_containing_digit = 10**(digits_in_number - 1) + number_index
            b = 10**(digits_in_number - digit_index - 1)
            return (number_containing_digit / b) % 10
          else
            digits_total = high
          end
        end
      end
      # rubocop:enable Metrics/AbcSize, Metrics/MethodLength

      def answer!
        0.upto(6).map { |i| nth_fraction_digit(10**i) }.inject(1, :*)
      end
    end
  end
end
