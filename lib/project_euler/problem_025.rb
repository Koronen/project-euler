#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem025 < ProjectEuler::ProblemBase
    def self.answer
      a, b, i = 1, 1, 2

      while b.to_s.length < 1000 do
        a, b = b, a + b
        i += 1
      end

      i
    end
  end
end

run_problem! if $0 == __FILE__
