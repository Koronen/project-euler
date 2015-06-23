require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #023.
  class Problem023 < ProblemBase
    # See: http://mathworld.wolfram.com/AbundantNumber.html
    UPPER_LIMIT = 20_161

    def self.answer!
      abundant_numbers = [12]
      abundant_number_sums = { 24 => nil }

      while abundant_numbers.last < UPPER_LIMIT
        # Get next abundant number
        c = abundant_numbers.last + 1
        c += 1 while proper_divisors(c).inject(0, :+) <= c

        # Add new sums
        abundant_numbers << c
        abundant_numbers.each do |n|
          sum = n + c
          break if sum > UPPER_LIMIT
          abundant_number_sums[sum] = nil
        end
      end

      (1..UPPER_LIMIT).select { |n| !abundant_number_sums.include?(n) }.
        inject(0, :+)
    end
  end
end
