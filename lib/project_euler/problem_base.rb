require 'project_euler/problem_helper'

module ProjectEuler
  DATA_DIR = File.join(File.expand_path(File.dirname(__FILE__)), '..', '..', 'data')

  class ProblemBase
    def self.answer!
      nil
    end

    def self.answer
      unless @answer
        @answer = self.answer!
      end
      @answer
    end
  end
end
