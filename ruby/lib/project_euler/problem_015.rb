require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #015.
  class Problem015 < ProblemBase
    def self.answer! # rubocop:disable Metrics/AbcSize
      grid = Array.new(21) { Array.new(21, 0) }
      grid[0][0] = 1

      0.upto(20) do |row|
        0.upto(20) do |col|
          grid[row][col] += grid[row - 1][col] if row > 0
          grid[row][col] += grid[row][col - 1] if col > 0
        end
      end

      grid[20][20]
    end
  end
end
