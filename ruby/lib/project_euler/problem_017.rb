require 'project_euler/problem_base'

require 'linguistics'
Linguistics.use :en

module ProjectEuler
  class Problem017 < ProjectEuler::ProblemBase
    def self.answer!
      (1..1000).map{|n| n.en.numwords.split(//) }.flatten.count{|c| ('a'..'z').include?(c) }
    end
  end
end
