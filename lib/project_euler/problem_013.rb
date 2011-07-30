#!/usr/bin/env ruby

require File.dirname(__FILE__) + '/problem_base'

module ProjectEuler
  class Problem013 < ProjectEuler::ProblemBase
    def answer
      0
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem013.run!
end
