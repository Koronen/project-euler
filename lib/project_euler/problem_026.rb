module ProjectEuler
  class Problem026 < ProjectEuler::ProblemBase
    class << self
      def fraction_recurring_cycle(a, b)
        fraction = a.to_f / b.to_f
        cycle = fraction.to_s.scan(/(\d+)(?:\1)+\d*$/).flatten.first
        cycle
      end

      def answer!
        longest_cycle = 0
        has_longest_cycle = 0

        1.upto(999) do |n|
          fraction = fraction_recurring_cycle(1, n)
          next if fraction.nil?
          if fraction.length > longest_cycle
            longest_cycle = fraction.length
            has_longest_cycle = n
          end
        end

        has_longest_cycle
      end
    end
  end
end
