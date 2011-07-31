require File.join(File.expand_path(File.dirname(__FILE__)), 'problem_helper')

module ProjectEuler
  DATA_DIR = File.join(File.expand_path(File.dirname(__FILE__)), '..', '..', 'data')

  class ProblemBase
    def self.run!
      puts new.answer
    end
  end
end
