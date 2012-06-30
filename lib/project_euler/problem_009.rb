module ProjectEuler
  class Problem009 < ProjectEuler::ProblemBase
    def self.answer!
      1.upto(1000) do |a|
        (a+1).upto(1000) do |b|
          c = Math.sqrt(a**2 + b**2).to_i

          # not a triplet
          next if c**2 != a**2 + b**2

          # too large
          break if a + b + c > 1000

          # sought after triplet
          return a*b*c if a + b + c == 1000
        end
      end
    end
  end
end
