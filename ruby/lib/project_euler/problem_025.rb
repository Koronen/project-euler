require 'project_euler/problem_base'

module ProjectEuler
  class Problem025 < ProjectEuler::ProblemBase
    def self.answer!
      a, b, i = 1, 1, 2

      while b.to_s.length < 1000 do
        a, b = b, a + b
        i += 1
      end

      i
    end
  end
end
