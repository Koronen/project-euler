#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem029 < ProjectEuler::ProblemBase
    def self.distinct_sequence_terms(low = 2, high = 100)
      (low..high).to_a.repeated_combination(2).map{|p| [p.first**p.last, p.last**p.first] }.flatten.uniq
    end

    def self.answer!
      self.distinct_sequence_terms(2, 100).length
    end
  end
end

run_problem! if $0 == __FILE__
