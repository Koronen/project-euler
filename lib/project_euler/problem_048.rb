#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem048 < ProjectEuler::ProblemBase
    def self.answer!
      answer = 0

      1.upto(1000) do |n|
        answer += n**n % 10**10
      end

      answer % 10**10
    end
  end
end

run_problem! if $0 == __FILE__
