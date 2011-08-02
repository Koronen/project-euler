$: << File.join(File.expand_path(File.dirname(__FILE__)), '..', 'lib', 'project_euler')
require 'timeout'

RSpec.configure do |c|
  c.filter_run_excluding :slow => true # tests that take more than 5 seconds
  c.fail_fast = true
end

=begin
[from http://projecteuler.net/index.php?section=about]
Does it matter if it takes more than one minute to solve?

Of course not, but that should provide the impetus to return to the problem and see how you can improve your approach.
But remember that once you've solved a particular problem you will be able to access a thread relating to that problem and
it is here that you may be able to pick some tips from others that have solved it.
=end
def it_is_solvable_in_time(timeout = 60, *options, &block)
  it "is solvable within a reasonable amount time (#{timeout}s)", *options do
    expect{ Timeout::timeout(timeout){ yield } }.to_not raise_error(Timeout::Error)
  end
end
