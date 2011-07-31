#!/usr/bin/env ruby

require File.join(File.expand_path(File.dirname(__FILE__)), 'problem_base')
require 'prime'

module ProjectEuler
  class Problem007 < ProjectEuler::ProblemBase
    def answer
      Prime.each_with_index.find{|_, i| i == 10000 }.first
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem007.run!
end
