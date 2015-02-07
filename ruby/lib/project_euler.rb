Dir['lib/project_euler/problem_*'].sort.each do |f|
  require "project_euler/#{File.basename(f, '.rb')}"
end
