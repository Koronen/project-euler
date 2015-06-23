require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #034.
  class Problem034 < ProjectEuler::ProblemBase
    def self.answer!
      10.upto(999_999).
        select { |n| digits(n).map { |m| factorial(m) }.inject(0, :+) == n }.
        inject(0, :+)
    end
  end
end
