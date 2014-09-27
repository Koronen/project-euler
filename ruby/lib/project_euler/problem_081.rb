module ProjectEuler
  class Problem081 < ProjectEuler::ProblemBase
    class << self
      def answer!
        file_path = File.join(ProjectEuler::DATA_DIR, 'p081_matrix.txt')
        matrix = IO.readlines(file_path).map(&:chomp).
          map { |l| l.split(",").map(&:to_i) }

        (1...matrix[0].size).each do |c|
          matrix[0][c] += matrix[0][c-1]
        end
        (1...matrix.size).each do |r|
          matrix[r][0] += matrix[r-1][0]
          (1...matrix[r].size).each do |c|
            matrix[r][c] += [matrix[r-1][c], matrix[r][c-1]].min
          end
        end

        matrix[matrix.size-1][matrix[0].size-1]
      end
    end
  end
end
