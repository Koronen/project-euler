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

def run_problem!
  klass = File.basename($0).gsub(/\.rb$/, '').camelize

  unless klass.match(/Problem(\d){3}/)
    puts $STDERR, "No matching problem"
    return
  end

  puts ProjectEuler.const_get(klass).answer
end
