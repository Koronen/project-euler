#!/usr/bin/env ruby

require File.dirname(__FILE__) + '/problem_base'

module ProjectEuler
  class Problem003 < ProjectEuler::ProblemBase
    def answer
      0
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem003.run!
end
