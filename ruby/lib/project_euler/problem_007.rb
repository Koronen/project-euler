require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #007.
  class Problem007 < ProblemBase
    def self.answer!
      Prime.each_with_index.find { |_p, i| i == 10_000 }.first
    end
  end
end
