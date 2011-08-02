require 'problem_helper'

module ProjectEuler
  DATA_DIR = File.join(File.expand_path(File.dirname(__FILE__)), '..', '..', 'data')

  class ProblemBase
    def self.answer!
      ProjectEuler.logger.warn("Calling ProblemBase#answer!")
      nil
    end

    def self.answer
      unless @answer
        ProjectEuler.logger.debug("Calling #{self.name}#answer!...")
        @answer = self.answer!
      end
      @answer
    end
  end
end
