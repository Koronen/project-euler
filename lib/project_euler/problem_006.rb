#!/usr/bin/env ruby

require File.dirname(__FILE__) + '/problem_base'

module ProjectEuler
  class Problem006 < ProjectEuler::ProblemBase
    def answer
      square_of_sum = (1..100).to_a.inject(&:+) ** 2
      sum_of_squares = (1..100).to_a.map{|x| x**2 }.inject(&:+)
      square_of_sum - sum_of_squares
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem006.run!
end
