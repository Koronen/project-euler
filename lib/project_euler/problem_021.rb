#!/usr/bin/env ruby

require File.join(File.expand_path(File.dirname(__FILE__)), 'problem_base')
require 'prime'

module ProjectEuler
  class Problem021 < ProjectEuler::ProblemBase
    def prime_factors(n)
      n.prime_division.map{|f, c| 1.upto(c).map{ f } }.flatten
    end

    def proper_divisors(n)
      pf = prime_factors(n) << 1
      1.upto(pf.count).map{|c| pf.combination(c).map{|f| f.inject(&:*)} }.flatten.uniq.sort - [n]
    end

    def d(n)
      d = proper_divisors(n).inject(&:+)
    end

    def answer
      2.upto(9999).select{|a| b = d(a); a != b && a == d(b) }.inject(&:+)
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem021.run!
end
