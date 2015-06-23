require 'project_euler/problem_base'

require 'linguistics'
Linguistics.use :en

module ProjectEuler
  # Solution to problem #017.
  class Problem017 < ProblemBase
    def self.answer!
      alphabet = ('a'..'z')
      (1..1000).flat_map { |n| n.en.numwords.chars }.
        count { |c| alphabet.cover?(c) }
    end
  end
end
