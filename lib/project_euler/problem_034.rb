module ProjectEuler
  class Problem034 < ProjectEuler::ProblemBase
    def self.answer!
      10.upto(999_999).select{|n| n.digits.map(&:factorial).inject(&:+) == n }.inject(&:+)
    end
  end
end
