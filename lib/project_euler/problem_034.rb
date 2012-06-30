module ProjectEuler
  class Problem034 < ProjectEuler::ProblemBase
    def self.answer!
      10.upto(999_999).select{|n| digits(n).map{|m| factorial(m) }.inject(&:+) == n }.inject(&:+)
    end
  end
end
