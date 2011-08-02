#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem030 < ProjectEuler::ProblemBase
    def self.digits_power_sum(n, power)
      sum = 0

      while n > 0
        sum += (n % 10)**power
        n /= 10
      end

      sum
    end

    def self.nth_power_digits_numbers(power)
      2.upto(1_000_000).select{|n| n > 10 && n == self.digits_power_sum(n, power) }
    end

    def self.answer!
      self.nth_power_digits_numbers(5).sum
    end
  end
end

run_problem! if $0 == __FILE__
