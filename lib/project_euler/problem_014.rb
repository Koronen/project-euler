#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)))
require 'problem_base'
#require 'memoize'; include Memoize

module ProjectEuler
  class Problem014 < ProjectEuler::ProblemBase
    class << self
      extend ActiveSupport::Memoizable

      def chain_length(start_at)
        return 0 if start_at == 1
        if start_at.odd?
          1 + chain_length(3 * start_at + 1)
        else
          1 + chain_length(start_at / 2)
        end
      end
      memoize :chain_length
    end

    def self.answer
      (1..1_000_000).max_by{|x| chain_length(x) }
    end
  end
end

run_problem! if $0 == __FILE__
