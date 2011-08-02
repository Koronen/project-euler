#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem019 < ProjectEuler::ProblemBase
    def self.answer!
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

run_problem! if $0 == __FILE__
