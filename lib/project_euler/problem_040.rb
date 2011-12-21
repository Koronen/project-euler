#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem040 < ProjectEuler::ProblemBase
    class << self
      # 0.12345678910111213141516...
      def nth_fraction_digit(n)
        return n if n < 10

        digits_in_number = 1
        digits_total = 9
        while true
          digits_in_number += 1
          low = digits_total + 1
          high = low + digits_in_number * (9 * (10 ** (digits_in_number-1))) - 1
          if n >= low and n <= high
            range_index = n - low
            number_index = (range_index / digits_in_number.to_f).floor
            digit_index = range_index % digits_in_number
            number_containing_digit = 10 ** (digits_in_number - 1) + number_index
            b = 10 ** (digits_in_number - digit_index - 1)
            return (number_containing_digit / b) % 10
          else
            digits_total = high
          end
        end
      end

      def answer!
        0.upto(6).map{|i| nth_fraction_digit(10 ** i) }.inject(&:*)
      end
    end
  end
end

run_problem! if $0 == __FILE__
