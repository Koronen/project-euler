require 'project_euler/problem_base'

module ProjectEuler
  class Problem028 < ProjectEuler::ProblemBase
    def self.diagonal_sum(side_length)
      if side_length <= 1
        1
      else
        sum = self.diagonal_sum(side_length-2)
        
        high = side_length**2
        sum += high
        sum += high - (side_length-1)*1
        sum += high - (side_length-1)*2
        sum += high - (side_length-1)*3
        
        sum
      end
    end

    def self.answer!
      self.diagonal_sum(1001)
    end
  end
end
