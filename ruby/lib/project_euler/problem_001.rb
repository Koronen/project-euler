require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #001.
  class Problem001 < ProblemBase
    def self.answer!
      (1..999).select { |i| i % 3 == 0 || i % 5 == 0 }.inject(0, :+)
    end
  end
end
