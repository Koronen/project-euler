require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #024.
  class Problem024 < ProblemBase
    def self.answer!
      (0..9).to_a.permutation(10).each_with_index do |p, i|
        return p.join.to_i if i == 999_999
      end
    end
  end
end
