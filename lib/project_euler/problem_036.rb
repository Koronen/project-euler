module ProjectEuler
  class Problem036 < ProjectEuler::ProblemBase
    def self.answer!
      1.upto(999_999).select{|n| n.to_s(10).reverse == n.to_s(10) && n.to_s(2).reverse == n.to_s(2) }.inject(&:+)
    end
  end
end
