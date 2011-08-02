#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem024 < ProjectEuler::ProblemBase
    def self.answer!
      (0..9).to_a.permutation(10).sort.each_with_index{|e,i| return e.join.to_i if i == 999_999 }
      nil
    end
  end
end

run_problem! if $0 == __FILE__
