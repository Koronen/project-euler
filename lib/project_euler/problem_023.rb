#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem023 < ProjectEuler::ProblemBase
    def self.answer
      nil
    end
  end
end

run_problem! if $0 == __FILE__
