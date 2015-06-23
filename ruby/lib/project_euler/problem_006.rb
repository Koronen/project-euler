require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #006.
  class Problem006 < ProblemBase
    def self.answer!
      square_of_sum = (100 * 100) * (101 * 101) / (2 * 2)
      sum_of_squares = 100 * 101 * (2 * 100 + 1) / 6
      square_of_sum - sum_of_squares
    end
  end
end
