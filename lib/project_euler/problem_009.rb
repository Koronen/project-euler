#!/usr/bin/env ruby

require File.join(File.expand_path(File.dirname(__FILE__)), 'problem_base')

module ProjectEuler
  class Problem009 < ProjectEuler::ProblemBase
    def answer
      1.upto(1000) do |a|
        (a+1).upto(1000) do |b|
          c = Math.sqrt(a*a + b*b).to_i

          # not a triplet
          next if c*c != a*a + b*b

          # too large
          break if a + b + c > 1000

          # sought after triplet
          return a*b*c if a + b + c == 1000
        end
      end
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem009.run!
end
