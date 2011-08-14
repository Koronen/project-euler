#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem067 < ProjectEuler::ProblemBase
    def self.answer!
      prev = []

      file_path = File.join(ProjectEuler::DATA_DIR, 'triangle.txt')
      File.open(file_path) do |file|
        while line = file.gets
          row = line.split.map(&:to_i)

          unless prev.blank?
            row.each_with_index do |e, i|
              if i == 0
                e += prev[i]
              elsif i == prev.size
                e += prev[i-1]
              else
                e = [e+prev[i], e+prev[i-1]].max
              end
              row[i] = e
            end
          end

          prev = row
        end
      end

      prev.max
    end
  end
end

run_problem! if $0 == __FILE__
