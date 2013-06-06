module ProjectEuler
  class Problem026 < ProjectEuler::ProblemBase
    class << self
      def answer!
        longest_cycle_length = 0
        longest_cycle_denominator = 0

        1.upto(999) do |n|
          cycle_length = unit_fraction_cycle_length(n)
          if cycle_length > longest_cycle_length
            longest_cycle_length = cycle_length
            longest_cycle_denominator = n
          end
        end

        longest_cycle_denominator
      end

      def unit_fraction_cycle_length(n)
        found_remainders = Hash.new 0

        value = 1
        position = 0

        while found_remainders[value] == 0 && value != 0
          found_remainders[value] = position
          value *= 10
          value %= n
          position += 1
        end

        return position - found_remainders[value]
      end
    end
  end
end
