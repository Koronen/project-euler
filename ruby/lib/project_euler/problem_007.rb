require 'project_euler/problem_base'

module ProjectEuler
  class Problem007 < ProjectEuler::ProblemBase
    def self.answer!
      Prime.each_with_index.find{|_, i| i == 10000 }.first
    end
  end
end
