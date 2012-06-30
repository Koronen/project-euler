require 'bundler'
require 'rake/testtask'

task default: [:spec, :acceptance]

Rake::TestTask.new :spec do |t|
  t.libs << 'spec' << 'lib'
  t.test_files = FileList['spec/**/*_spec.rb']
end

Rake::TestTask.new :acceptance do |t|
  t.libs << 'spec' << 'lib'
  t.test_files = FileList['spec/**/*_acceptance.rb']
end

desc "Create a stub for a new problem"
task :new, :number do |t, args|
  require 'erb'

  raise ArgumentError if args[:number].nil?
  number = "%03d" % args[:number]

  # TODO: check if exists

  # doc
  write_template_to_file 'templates/problem.md.erb', binding, "doc/project_euler/problem_#{number}.md"

  # implementation
  file_path = "lib/project_euler/problem_#{number}.rb"
  write_template_to_file 'templates/problem.rb.erb', binding, file_path
  system("chmod +x #{file_path}")

  # spec
  write_template_to_file 'templates/problem_spec.rb.erb', binding, "spec/project_euler/problem_#{number}_spec.rb"
end

def write_template_to_file(template_path, binding, file_path)
  erb_template = ERB.new File.read(template_path)
  content = erb_template.result(binding)
  File.open(file_path, 'w'){ |f| f.write(content) }
  puts "Created file #{file_path}"
end
