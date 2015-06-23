require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #048.
  class Problem048 < ProblemBase
    def self.answer!
      answer = 0

      1.upto(1000) do |n|
        answer += n**n % 10**10
      end

      answer % 10**10
    end
  end
end
