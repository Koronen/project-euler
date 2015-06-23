require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #039.
  class Problem039 < ProblemBase
    def self.answer! # rubocop:disable Metrics/AbcSize
      irt = Hash.new { |h, k| h[k] = 0 }

      (1..500).each do |a|
        (a..500).each do |b|
          c = Math.sqrt(a * a + b * b)
          next if a + b + c > 1_000
          next if c != c.to_i
          irt[a + b + c.to_i] += 1
        end
      end

      irt.max { |a, b| a.last <=> b.last }.first
    end
  end
end
