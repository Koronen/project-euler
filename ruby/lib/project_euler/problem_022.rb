require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #022.
  class Problem022 < ProblemBase
    def self.name_value(name)
      name.each_char.map { |c| c.ord - 'A'.ord + 1 }.inject(0, :+)
    end

    def self.answer!
      file_path = File.join(DATA_DIR, 'names.txt')
      names = IO.read(file_path).split(/,/).map { |n| n[1..-2] }.sort
      names.map.with_index { |n, i| (i + 1) * name_value(n) }.inject(0, :+)
    end
  end
end
