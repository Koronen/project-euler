#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'
require 'linguistics'

module ProjectEuler
  class Problem017 < ProjectEuler::ProblemBase
    def self.answer!
      (1..1000).map{|n| Linguistics::EN.numwords(n).split(//) }.flatten.count{|c| ('a'..'z').include?(c) }
    end
  end
end

run_problem! if $0 == __FILE__
