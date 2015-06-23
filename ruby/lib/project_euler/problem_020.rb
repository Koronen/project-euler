require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #020.
  class Problem020 < ProblemBase
    def self.answer!
      (1..100).inject(1, :*).to_s.chars.map(&:to_i).inject(0, :+)
    end
  end
end
