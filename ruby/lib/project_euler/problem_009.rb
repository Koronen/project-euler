require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #009.
  class Problem009 < ProblemBase
    def self.answer!
      1.upto(333) do |a|
        (a + 1).upto(500) do |b|
          c = 1000 - a - b
          return a * b * c if c * c == a * a + b * b
        end
      end
    end
  end
end
