require 'active_support/all'
require 'prime'

class Integer
  def prime_factors
    self.prime_division.map{|f, c| 1.upto(c).map{ f } }.flatten
  end

  def proper_divisors
    pf = self.prime_factors << 1
    1.upto(pf.count).map{|c| pf.combination(c).map{|f| f.inject(&:*)} }.flatten.uniq.sort - [self]
  end
end
