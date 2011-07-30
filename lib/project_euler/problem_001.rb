#!/usr/bin/env ruby

require File.dirname(__FILE__) + '/problem_base'

module ProjectEuler
  class Problem001 < ProjectEuler::ProblemBase
    def answer
      (1..999).to_a.select{|i| i % 3 == 0 || i % 5 == 0 }.inject(:+)
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem001.run!
end
