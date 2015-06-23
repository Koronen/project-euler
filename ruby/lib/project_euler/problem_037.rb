require 'project_euler/problem_base'

require 'prime'
require 'set'

module ProjectEuler
  # Solution to problem #037.
  class Problem037 < ProblemBase
    def self.answer!
      primes = Set.new
      truncatable_primes_sum = 0

      Prime.each do |p|
        break if p >= 1_000_000
        primes << p
        next if p < 10

        if truncations_of(p).all? { |q| primes.include?(q) }
          truncatable_primes_sum += p
        end
      end

      truncatable_primes_sum
    end

    def self.truncations_of(n)
      truncations = Set.new

      # RTL
      m = n / 10
      while m > 0
        truncations << m
        m /= 10
      end

      # LTR
      w = Math.log10(n).floor
      while w > 0
        truncations << n % 10**w
        w -= 1
      end

      truncations.to_a
    end
  end
end
