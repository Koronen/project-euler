require 'active_support/all'
require 'prime'

class Array
  # Number product
  # Like sum but multiplies instead of adds
  def nproduct
    self.inject(&:*)
  end
end

class Range
  # Number product
  # Like sum but multiplies instead of adds
  def nproduct
    self.inject(&:*)
  end
end

class Integer
  # List of all prime factors
  def prime_factors
    self.prime_division.map{|f, c| 1.upto(c).map{ f } }.flatten
  end

  # List of proper divisors
  def proper_divisors
    pf = self.prime_factors << 1
    1.upto(pf.count).map{|c| pf.combination(c).map{|f| f.nproduct unless f.blank? } }.flatten.uniq.sort - [self]
  end

  # Is this a perfect number?
  def perfect?
    proper_divisors.sum == self
  end

  # Is this a deficient number?
  def deficient?
    proper_divisors.sum < self
  end

  # Is this an abundant number?
  def abundant?
    proper_divisors.sum > self
  end

  # Splits integer into list of digits
  def digits
    self.to_s.split(//).map(&:to_i)
  end
end

module ProjectEuler
  LOGGER = lambda do
    l = Logger.new(STDERR)
    l.level = Logger::WARN
    l.formatter = lambda {|severity, datetime, progname, msg| "#{datetime}: [#{severity}] #{msg}\n" }
    l
  end.call

  def ProjectEuler.logger
    LOGGER
  end
end

def run_problem!
  klass = File.basename($0).gsub(/\.rb$/, '').camelize

  unless klass.match(/Problem(\d){3}/)
    puts $STDERR, "No matching problem"
    return
  end

  puts ProjectEuler.const_get(klass).answer
end
