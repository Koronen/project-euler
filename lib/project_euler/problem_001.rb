#!/usr/bin/env ruby

$LOAD_PATH << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem001 < ProjectEuler::ProblemBase
    def self.answer!
      (1..999).select{|i| i % 3 == 0 || i % 5 == 0 }.inject(&:+)
    end
  end
end

run_problem! if $0 == __FILE__
