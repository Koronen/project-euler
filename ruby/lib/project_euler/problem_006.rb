module ProjectEuler
  class Problem006 < ProjectEuler::ProblemBase
    def self.answer!
      square_of_sum = (100 * 100) * (101 * 101) / (2 * 2)
      sum_of_squares = 100 * 101 * (2 * 100 + 1) / 6
      square_of_sum - sum_of_squares
    end
  end
end
