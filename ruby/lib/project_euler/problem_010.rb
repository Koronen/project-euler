require 'project_euler/problem_base'

module ProjectEuler
  class Problem010 < ProjectEuler::ProblemBase
    def self.answer!
      Prime.take_while { |p| p <= 2_000_000 }.inject(0, :+)
    end
  end
end
