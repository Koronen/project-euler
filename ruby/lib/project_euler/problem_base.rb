require 'project_euler/common_math'

module ProjectEuler # :nodoc:
  DATA_DIR = File.expand_path('../../../data', File.dirname(__FILE__))

  # Common problem superclass.
  class ProblemBase
    extend ProjectEuler::CommonMath

    def self.answer!
      fail NotImplementedError, 'answer! not implemented'
    end

    def self.answer
      @answer ||= self.answer!
    end
  end
end
