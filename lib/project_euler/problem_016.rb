module ProjectEuler
  class Problem016 < ProjectEuler::ProblemBase
    def self.answer!
      (2**1000).to_s.split(//).map!(&:to_i).inject(:+)
    end
  end
end
