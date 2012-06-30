require 'project_euler'

module ProjectEuler
  class ProblemBase
    extend ProjectEuler::CommonMath

    def self.answer!
      nil
    end

    def self.answer
      @answer ||= self.answer!
    end
  end
end
