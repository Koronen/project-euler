#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem020 < ProjectEuler::ProblemBase
    def self.answer!
      (1..100).inject(&:*).to_s.split(//).map(&:to_i).inject(&:+)
    end
  end
end

run_problem! if $0 == __FILE__
