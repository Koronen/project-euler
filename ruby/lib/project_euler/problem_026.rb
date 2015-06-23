require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #026.
  class Problem026 < ProblemBase
    class << self
      def answer!
        1.upto(999).max_by { |n| unit_fraction_cycle_length(n) }
      end

      def unit_fraction_cycle_length(n)
        found_remainders = Hash.new(0)
        value = 1
        position = 0

        while found_remainders[value] == 0 && value != 0
          found_remainders[value] = position
          value *= 10
          value %= n
          position += 1
        end

        position - found_remainders[value]
      end
    end
  end
end
