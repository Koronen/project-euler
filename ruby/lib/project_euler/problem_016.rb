require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #016.
  class Problem016 < ProblemBase
    def self.answer!
      (2**1000).to_s.chars.map(&:to_i).inject(0, :+)
    end
  end
end
