require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #014.
  class Problem014 < ProblemBase
    def self.answer!
      new.answer!
    end

    def initialize
      @chain_lengths = {}
    end

    def answer!
      (1..1_000_000).max_by { |x| chain_length(x) }
    end

    def chain_length(start_at)
      @chain_lengths[start_at] ||= chain_length!(start_at)
    end

    private

    def chain_length!(start_at)
      return 0 if start_at == 1

      if start_at.odd?
        1 + chain_length(3 * start_at + 1)
      else
        1 + chain_length(start_at / 2)
      end
    end
  end
end
