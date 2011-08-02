#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem030 < ProjectEuler::ProblemBase
    class << self
      extend ActiveSupport::Memoizable

      def digits_power_sum(digits, power)
        digits.map{|d| d**power }.sum
      end
      memoize :digits_power_sum
    end
    
    def self.nth_power_digits_numbers(power)
      1.upto(999_999).select{|n| n > 10 && n == self.digits_power_sum(n.digits.sort, power) }
    end

    def self.answer!
      self.nth_power_digits_numbers(5).sum
    end
  end
end

run_problem! if $0 == __FILE__
