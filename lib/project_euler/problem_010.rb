#!/usr/bin/env ruby

require File.join(File.expand_path(File.dirname(__FILE__)), 'problem_base')
require 'prime'

module ProjectEuler
  class Problem010 < ProjectEuler::ProblemBase
    def answer
      sum = 0

      Prime.each do |p|
        break if p > 2_000_000
        sum += p
      end

      sum
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem010.run!
end
