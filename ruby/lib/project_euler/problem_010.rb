require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #010.
  class Problem010 < ProblemBase
    def self.answer!
      Prime.take_while { |p| p <= 2_000_000 }.inject(0, :+)
    end
  end
end
