#!/usr/bin/env ruby

require File.join(File.expand_path(File.dirname(__FILE__)), 'problem_base')

module ProjectEuler
  class Problem019 < ProjectEuler::ProblemBase
    def answer
      answer = 0

      1901.upto(2000) do |year|
        1.upto(12) do |month|
          answer += 1 if Time.utc(year, month, 1).sunday?
        end
      end

      answer
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem019.run!
end
