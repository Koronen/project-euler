require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #002.
  class Problem002 < ProblemBase
    def self.answer!
      fibs = [1, 2]

      fibs << fibs[-2] + fibs[-1] while fibs.last < 4_000_000

      fibs.select(&:even?).inject(0, &:+)
    end
  end
end
