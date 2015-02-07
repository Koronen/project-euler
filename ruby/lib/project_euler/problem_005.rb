require 'project_euler/problem_base'

module ProjectEuler
  class Problem005 < ProjectEuler::ProblemBase
    def self.answer!
      (1..20).inject(1) do |n, i|
        # product of prime factors missing from n
        # or 1 if none are missing
        f = i / n.gcd(i)

        # add them through multiplication
        n *= f
      end
    end
  end
end
