$: << File.join(File.expand_path(File.dirname(__FILE__)), '..', 'lib', 'project_euler')

RSpec.configure do |c|
  c.filter_run_excluding :slow => true
end
