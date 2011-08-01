#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem021 < ProjectEuler::ProblemBase
    def self.d(n)
      n.proper_divisors.sum
    end

    def self.answer
      2.upto(9999).select{|a| b = d(a); a != b && a == d(b) }.sum
    end
  end
end

run_problem! if $0 == __FILE__
