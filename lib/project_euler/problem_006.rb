#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem006 < ProjectEuler::ProblemBase
    def self.answer
      square_of_sum = (1..100).sum ** 2
      sum_of_squares = (1..100).map{|x| x**2 }.sum
      square_of_sum - sum_of_squares
    end
  end
end

run_problem! if $0 == __FILE__
