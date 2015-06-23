require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #045.
  class Problem045 < ProblemBase
    def self.answer!
      new.answer
    end

    def self.triangle(n)
      n * (n + 1) / 2
    end

    def self.pentagonal(n)
      n * (3 * n - 1) / 2
    end

    def self.hexagonal(n)
      n * (2 * n - 1)
    end

    attr_reader :t, :p, :h

    def initialize
      @tn = 285 + 1
      @pn = 165 + 1
      @hn = 143 + 1

      @t = self.class.triangle(@tn)
      @p = self.class.pentagonal(@pn)
      @h = self.class.hexagonal(@hn)
    end

    def answer
      loop do
        return t if all_numbers_equal?

        if t <= p && t <= h
          find_next_triangle_number
        elsif p <= t && p <= h
          find_next_pentagonal_number
        else
          find_next_hexagonal_number
        end
      end
    end

    private

    def all_numbers_equal?
      t == p && p == h
    end

    def find_next_triangle_number
      while t <= p && t <= h && !all_numbers_equal?
        @tn += 1
        @t = self.class.triangle(@tn)
      end
    end

    def find_next_pentagonal_number
      while p <= t && p <= h && !all_numbers_equal?
        @pn += 1
        @p = self.class.pentagonal(@pn)
      end
    end

    def find_next_hexagonal_number
      while h <= t && h <= p && !all_numbers_equal?
        @hn += 1
        @h = self.class.hexagonal(@hn)
      end
    end
  end
end
