require 'rspec/core/rake_task'
require 'erb'

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "Create a stub for a new problem"
task :new, :number do |t, args|
  raise ArgumentError if args[:number].nil?
  number = "%03d" % args[:number]

  # TODO: check if exists

  # doc
  doc = <<-EOF
# TITLE

DESCRIPTION
  EOF
  write_to_file(File.join(File.expand_path(File.dirname(__FILE__)), 'doc', 'project_euler', "problem_#{number}.md"), doc)

  # implementation
  impl = ERB.new <<-EOF
#!/usr/bin/env ruby

require File.join(File.expand_path(File.dirname(__FILE__)), 'problem_base')

module ProjectEuler
  class Problem<%= number %> < ProjectEuler::ProblemBase
    def answer
      0
    end
  end
end

if $0 == __FILE__
  ProjectEuler::Problem<%= number %>.run!
end
  EOF
  impl = impl.result(binding)
  write_to_file(File.join(File.expand_path(File.dirname(__FILE__)), 'lib', 'project_euler', "problem_#{number}.rb"), impl)

  # spec
  spec = ERB.new <<-EOF
require 'spec_helper'
require 'project_euler/problem_<%= number %>'

describe ProjectEuler::Problem<%= number %> do
  before do
    @instance = ProjectEuler::Problem<%= number %>.new
  end

  it "gives the correct answer" do
    @instance.answer.should eq(0)
  end
end
  EOF
  spec = spec.result(binding)
  write_to_file(File.join(File.expand_path(File.dirname(__FILE__)), 'spec', 'project_euler', "problem_#{number}_spec.rb"), spec)
end

def write_to_file(path, content)
  File.open(path, 'w'){ |f| f.write(content) }
  puts "Created file #{path}"
end
