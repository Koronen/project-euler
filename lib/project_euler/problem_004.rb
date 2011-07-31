#!/usr/bin/env ruby

require File.join(File.expand_path(File.dirname(__FILE__)), 'problem_base')

module ProjectEuler
  class Problem004 < ProjectEuler::ProblemBase
    def answer
      answer = 0

      100.upto(999) do |a|
        100.upto(999) do |b|
          n = a * b
          if n.to_s == n.to_s.reverse and n > answer
            answer = n
          end
        end
      end

      answer
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem004.run!
end
