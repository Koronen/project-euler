#!/usr/bin/env ruby

require File.join(File.expand_path(File.dirname(__FILE__)), 'problem_base')

module ProjectEuler
  class Problem016 < ProjectEuler::ProblemBase
    def answer
      (2**1000).to_s.split(//).map!(&:to_i).inject(:+)
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem016.run!
end
