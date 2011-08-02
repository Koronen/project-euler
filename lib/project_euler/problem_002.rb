#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem002 < ProjectEuler::ProblemBase
    def self.answer!
      fibs = [1, 2]

      while fibs.last < 4000000 do
        fibs << fibs[-2] + fibs[-1]
      end

      fibs.select(&:even?).inject(&:+)
    end
  end
end

run_problem! if $0 == __FILE__
