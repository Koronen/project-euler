#!/usr/bin/env ruby

require File.join(File.expand_path(File.dirname(__FILE__)), 'problem_base')

module ProjectEuler
  class Problem022 < ProjectEuler::ProblemBase
    def name_value(name)
      name.each_char.map{|c| c.ord - 'A'.ord + 1 }.inject(0, &:+)
    end

    def answer
      score = 0

      file_path = File.join(ProjectEuler::DATA_DIR, 'names.txt')
      names = IO.read(file_path).split(/,/).map{|n| n[1..-2] }.sort
      names.each_with_index do |name, i|
        score += (i+1) * name_value(name)
      end

      score
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem022.run!
end
