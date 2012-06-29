#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem023 < ProjectEuler::ProblemBase
    LOWER_LIMIT = 24
    UPPER_LIMIT = 28123

    def self.answer!
      sum = 1.upto(LOWER_LIMIT-1).inject(&:+)

      #abu = 1.upto(UPPER_LIMIT).select{|x| x.abundant? }
      #cmbs = abu.repeated_permutation(2).map(&:sum).sort.uniq
      #cmbs.each_with_index do |n, i|
      #  prev = i == 0 ? 1 : cmbs[i-1]
      #  sum += (prev+1).upto(cmbs[i]-1).sum
      #end

      sum
    end
  end
end

run_problem! if $0 == __FILE__
