require 'project_euler/problem_base'

module ProjectEuler
  class Problem042 < ProjectEuler::ProblemBase
    class << self
      def answer!
        triangle_numbers = (1..100).map{|n| n * (n+1) / 2 }

        file_path = File.join(ProjectEuler::DATA_DIR, 'words.txt')
        words = IO.read(file_path).split(/,/).map{|w| w[1..-2] }

        words.select{|w| triangle_numbers.include?(self.word_value(w)) }.size
      end

      def word_value(word)
        word.split(//).map{|l| l.ord - 'A'.ord + 1 }.inject(&:+)
      end
    end
  end
end
