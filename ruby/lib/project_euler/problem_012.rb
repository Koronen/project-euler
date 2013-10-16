module ProjectEuler
  class Problem012 < ProjectEuler::ProblemBase
    # n + (n-1) + ... + 1
    def self.sum_to_1(n)
      n * (n + 1) / 2
    end

    def self.answer!
      n = 1
      n += 1 while self.sum_to_1(n).prime_division.inject(1){|r, d| r *= (d.last + 1) } <= 500
      self.sum_to_1(n)
    end
  end
end