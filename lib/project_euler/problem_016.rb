#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem016 < ProjectEuler::ProblemBase
    def self.answer!
      (2**1000).to_s.split(//).map!(&:to_i).inject(:+)
    end
  end
end

run_problem! if $0 == __FILE__
