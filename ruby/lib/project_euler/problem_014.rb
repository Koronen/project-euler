require 'project_euler/problem_base'

module ProjectEuler
  class Problem014 < ProjectEuler::ProblemBase
    @@chain_lengths = {}

    class << self
      def chain_length(start_at)
        @@chain_lengths[start_at] ||= chain_length!(start_at)
      end

      def chain_length!(start_at)
        return 0 if start_at == 1

        if start_at.odd?
          1 + chain_length(3 * start_at + 1)
        else
          1 + chain_length(start_at / 2)
        end
      end

      def answer!
        (1..1_000_000).max_by{|x| chain_length(x) }
      end
    end
  end
end
