#!/usr/bin/env ruby

require File.dirname(__FILE__) + '/problem_base'

module ProjectEuler
  class Problem001 < ProjectEuler::ProblemBase
    def answer
      17
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem001.run!
end
