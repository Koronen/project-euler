#!/usr/bin/env ruby

require File.join(File.expand_path(File.dirname(__FILE__)), 'problem_base')
require 'linguistics'

module ProjectEuler
  class Problem017 < ProjectEuler::ProblemBase
    def answer
      (1..1000).map do |n|
        Linguistics::EN.numwords(n).split(//)
      end.flatten.count do |c|
        ('a'..'z').include?(c)
      end
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem017.run!
end
