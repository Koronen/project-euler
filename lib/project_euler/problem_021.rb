#!/usr/bin/env ruby

require File.join(File.expand_path(File.dirname(__FILE__)), 'problem_base')
require 'prime'

module ProjectEuler
  class Problem021 < ProjectEuler::ProblemBase
    def d(n)
      d = n.proper_divisors.inject(&:+)
    end

    def answer
      2.upto(9999).select{|a| b = d(a); a != b && a == d(b) }.inject(&:+)
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem021.run!
end
