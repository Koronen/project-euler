#!/usr/bin/env ruby

require File.join(File.expand_path(File.dirname(__FILE__)), 'problem_base')

module ProjectEuler
  class Problem020 < ProjectEuler::ProblemBase
    def answer
      (1..100).to_a.inject(&:*).to_s.split(//).map(&:to_i).inject(&:+)
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem020.run!
end
