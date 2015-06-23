require 'project_euler/problem_base'

require 'set'
require 'prime'

module ProjectEuler
  # Solution to problem #035.
  class Problem035 < ProblemBase
    def self.answer!
      primes = Set.new
      circular_primes_count = 0

      Prime.each do |p|
        break if p >= 1_000_000
        primes << p

        rr = rotations_of(p)
        if rr.all? { |q| primes.include?(q) }
          circular_primes_count += rr.size
        end
      end

      circular_primes_count
    end

    def self.rotations_of(n)
      rotations = Set.new
      rotations << n

      number_of_rotations = Math.log10(n).ceil
      n_digits = digits(n)
      number_of_rotations.times do
        n_digits = n_digits.rotate
        m = n_digits.reverse.map.with_index { |d, i| d * 10**i }.inject(0, :+)
        rotations << m
      end

      rotations.to_a
    end
  end
end
