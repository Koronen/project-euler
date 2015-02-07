require 'project_euler/problem_base'

module ProjectEuler
  class Problem001 < ProjectEuler::ProblemBase
    def self.answer!
      (1..999).select { |i| i % 3 == 0 || i % 5 == 0 }.inject(0, :+)
    end
  end
end
