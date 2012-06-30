module ProjectEuler
  class Problem020 < ProjectEuler::ProblemBase
    def self.answer!
      (1..100).inject(&:*).to_s.split(//).map(&:to_i).inject(&:+)
    end
  end
end
