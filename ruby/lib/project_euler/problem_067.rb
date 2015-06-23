require 'project_euler/problem_base'

module ProjectEuler # :nodoc:
  TRIANGLE_PATH = File.join(ProjectEuler::DATA_DIR, 'triangle.txt')

  # Solution to problem #067.
  class Problem067 < ProjectEuler::ProblemBase
    def self.answer! # rubocop:disable Metrics/AbcSize
      last = File.open(TRIANGLE_PATH).each_line.inject([]) do |prev, line|
        row = line.split.map(&:to_i)
        next row if prev.empty?

        row.each_with_index do |e, i|
          row[i] = if i == 0
                     e + prev[i]
                   elsif i == prev.size
                     e + prev[i - 1]
                   else
                     [e + prev[i], e + prev[i - 1]].max
                   end
        end

        row
      end

      last.max
    end
  end
end
