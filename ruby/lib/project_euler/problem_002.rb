require 'project_euler/problem_base'

module ProjectEuler
  class Problem002 < ProjectEuler::ProblemBase
    def self.answer!
      fibs = [1, 2]

      while fibs.last < 4000000 do
        fibs << fibs[-2] + fibs[-1]
      end

      fibs.select(&:even?).inject(&:+)
    end
  end
end
