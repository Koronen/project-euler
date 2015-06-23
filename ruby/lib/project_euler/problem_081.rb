require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #081.
  class Problem081 < ProjectEuler::ProblemBase
    MATRIX_PATH = File.join(ProjectEuler::DATA_DIR, 'p081_matrix.txt')

    def self.answer! # rubocop:disable Metrics/AbcSize
      matrix = read_matrix

      (1...matrix[0].size).each do |c|
        matrix[0][c] += matrix[0][c - 1]
      end

      (1...matrix.size).each do |r|
        matrix[r][0] += matrix[r - 1][0]
        (1...matrix[r].size).each do |c|
          matrix[r][c] += [matrix[r - 1][c], matrix[r][c - 1]].min
        end
      end

      matrix[matrix.size - 1][matrix[0].size - 1]
    end

    def self.read_matrix
      IO.readlines(MATRIX_PATH).map(&:chomp).
        map { |l| l.split(',').map(&:to_i) }
    end
  end
end
