require 'prime'

class Fixnum
  # List of all prime factors
  def prime_factors
    self.prime_division.map{|f, c| [f] * c }.flatten
  end

  # List of proper divisors
  def proper_divisors
    pf = self.prime_factors << 1
    1.upto(pf.count).map{|c| pf.combination(c).map{|f| f.inject(&:*) unless f.empty? } }.flatten.uniq.sort - [self]
  end

  # Splits integer into list of digits
  def digits
    digits = []
    n = self
    while n > 0
      digits << n % 10
      n /= 10
    end
    digits.reverse
  end

  # Calculates the factorial of this number
  def factorial
    @factorial ||= (self == 0 ? 1 : self.downto(1).inject(:*))
  end
end
