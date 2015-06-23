require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #028.
  class Problem028 < ProblemBase
    def self.answer!
      diagonal_sum(1001)
    end

    def self.diagonal_sum(side_length)
      if side_length <= 1
        1
      else
        sum = diagonal_sum(side_length - 2)

        high = side_length * side_length
        sum += high
        sum += high - (side_length - 1) * 1
        sum += high - (side_length - 1) * 2
        sum += high - (side_length - 1) * 3

        sum
      end
    end
  end
end
