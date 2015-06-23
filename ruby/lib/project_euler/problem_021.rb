require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #021.
  class Problem021 < ProblemBase
    def self.answer!
      new.answer!
    end

    def initialize
      @d = {}
    end

    def answer!
      2.upto(9999).select { |a| a != d(a) && a == d(d(a)) }.inject(0, :+)
    end

    def d(n)
      @d[n] ||= self.class.proper_divisors(n).inject(0, :+)
    end
  end
end
