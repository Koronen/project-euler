require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #025.
  class Problem025 < ProblemBase
    def self.answer!
      a = 1
      b = 1
      i = 2

      while b.to_s.length < 1000
        a, b = b, a + b
        i += 1
      end

      i
    end
  end
end
