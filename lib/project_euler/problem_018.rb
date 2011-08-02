#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'

module ProjectEuler
  class Problem018 < ProjectEuler::ProblemBase
    TREE = %q(
      75
      95 64
      17 47 82
      18 35 87 10
      20 04 82 47 65
      19 01 23 75 03 34
      88 02 77 73 07 63 67
      99 65 04 28 06 16 70 92
      41 41 26 56 83 40 80 70 33
      41 48 72 33 47 32 37 16 94 29
      53 71 44 65 25 43 91 52 97 51 14
      70 11 33 28 77 73 17 78 39 68 17 57
      91 71 52 38 17 14 91 43 58 50 27 29 48
      63 66 04 68 89 53 67 30 73 16 69 87 40 31
      04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
    ).split(/\n/).map{|s| s.split.map(&:to_i) }.delete_if{|a| a.empty? }

    def self.answer!
      prev = TREE.first

      TREE[1..-1].each_with_index do |row, j|
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

        prev = row
      end

      prev.max
    end
  end
end

run_problem! if $0 == __FILE__
