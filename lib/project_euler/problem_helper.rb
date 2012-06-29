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

  # Is this a perfect number?
  def perfect?
    (proper_divisors.inject(&:+) || 0) == self
  end

  # Is this a deficient number?
  def deficient?
    (proper_divisors.inject(&:+) || 0) < self
  end

  # Is this an abundant number?
  def abundant?
    (proper_divisors.inject(&:+) || 0) > self
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
    return 1 if self == 0
    self.downto(1).inject(:*)
  end
end

def run_problem!
  klass = File.basename($0).gsub(/\.rb$/, '').split('_').map(&:capitalize).join

  unless klass.match(/Problem(\d){3}/)
    puts $STDERR, "No matching problem"
    return
  end

  puts ProjectEuler.const_get(klass).answer
end
