#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem007 < ProjectEuler::ProblemBase
    def self.answer!
      Prime.each_with_index.find{|_, i| i == 10000 }.first
    end
  end
end

run_problem! if $0 == __FILE__
