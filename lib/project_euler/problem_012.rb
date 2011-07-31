#!/usr/bin/env ruby

require File.join(File.expand_path(File.dirname(__FILE__)), 'problem_base')
require 'prime'

module ProjectEuler
  class Problem012 < ProjectEuler::ProblemBase
    # n + (n-1) + ... + 1
    def sum_to_1(n)
      n * (n + 1) / 2
    end

    def answer
      n = 1
      n += 1 while sum_to_1(n).prime_division.inject(1){|r, d| r *= (d.last + 1) } <= 500
      sum_to_1(n)
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem012.run!
end
