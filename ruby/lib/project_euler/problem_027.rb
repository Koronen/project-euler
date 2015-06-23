require 'project_euler/problem_base'

require 'set'

module ProjectEuler
  # Solution to problem #027.
  class Problem027 < ProblemBase
    def self.answer!
      primes = generate_primes
      nmax = 0
      ab = 0

      (-999..999).step(2).each do |a|
        primes.each do |b|
          n = 0
          n += 1 while primes.include?(n * n + a * n + b)
          if n > nmax
            nmax = n
            ab = a * b
          end
        end
      end

      ab
    end

    def self.generate_primes
      primes = Set.new
      Prime.each do |p|
        break if p > 1000
        primes << p
      end
      primes
    end
  end
end
