require 'prime'

module ProjectEuler
  module CommonMath
    @@factorial = {}

    def prime_factors(n)
      n.prime_division.map { |f, c| [f] * c }.flatten
    end

    def proper_divisors(n)
      pf = prime_factors(n) << 1
      1.upto(pf.count).flat_map { |c| pf.combination(c).map { |f| f.inject(1, :*) } }.sort.uniq - [n]
    end

    def digits(n)
      digits = []
      while n > 0
        digits << n % 10
        n /= 10
      end
      digits.reverse
    end

    def factorial(n)
      @@factorial[n] ||= (n == 0 ? 1 : n.downto(1).inject(1, :*))
    end
  end
end
