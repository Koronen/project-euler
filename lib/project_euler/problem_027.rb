module ProjectEuler
  class Problem027 < ProjectEuler::ProblemBase
    def self.answer!
      primes = {}
      Prime.each do |p|
        break if p > 1000
        primes[p] = p
      end

      nmax = 0
      ab = 0
      (-999..999).step(2).each do |a|
        primes.keys.each do |b|
          n = 0
          n += 1 while primes.include?(n*n + a*n + b)
          if n > nmax
            nmax = n
            ab = a * b
          end
        end
      end

      ab
    end
  end
end
