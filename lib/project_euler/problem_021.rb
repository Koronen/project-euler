module ProjectEuler
  class Problem021 < ProjectEuler::ProblemBase
    @@d = {}

    def self.d(n)
      @@d[n] ||= (proper_divisors(n).inject(&:+) || 0)
    end

    def self.answer!
      2.upto(9999).select{|a| b = d(a); a != b && a == d(b) }.inject(&:+)
    end
  end
end
