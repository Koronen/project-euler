#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem034 < ProjectEuler::ProblemBase
    def self.answer!
      10.upto(999_999).select{|n| n.digits.map(&:factorial).sum == n }.sum
    end
  end
end

run_problem! if $0 == __FILE__
