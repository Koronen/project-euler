require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #029.
  class Problem029 < ProblemBase
    def self.answer!
      distinct_sequence_terms(2, 100).length
    end

    def self.distinct_sequence_terms(low, high)
      (low..high).to_a.repeated_combination(2).
        flat_map { |p| [p.first**p.last, p.last**p.first] }.
        uniq
    end
  end
end
