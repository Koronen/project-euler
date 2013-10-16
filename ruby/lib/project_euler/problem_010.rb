module ProjectEuler
  class Problem010 < ProjectEuler::ProblemBase
    def self.answer!
      sum = 0

      Prime.each do |p|
        break if p > 2_000_000
        sum += p
      end

      sum
    end
  end
end
