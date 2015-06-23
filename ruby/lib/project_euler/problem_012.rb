require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #012.
  class Problem012 < ProblemBase
    def self.answer!
      triangle_numbers.find do |n|
        n.prime_division.inject(1) { |a, e| a * (e.last + 1) } > 500
      end
    end

    def self.triangle_numbers
      Enumerator.new do |y|
        n = s = 1
        loop do
          y << s
          n += 1
          s += n
        end
      end
    end
  end
end
