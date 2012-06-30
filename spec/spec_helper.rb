require 'timeout'

$LOAD_PATH << File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'project_euler/problem_base'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true

  config.filter_run_excluding :slow => true # tests that take more than 5 seconds
end

=begin
[from http://projecteuler.net/index.php?section=about]
Does it matter if it takes more than one minute to solve?

Of course not, but that should provide the impetus to return to the problem and see how you can improve your approach.
But remember that once you've solved a particular problem you will be able to access a thread relating to that problem and
it is here that you may be able to pick some tips from others that have solved it.
=end
def it_is_solvable_in_time(timeout = 60, *options)
  it "is solvable within a reasonable amount time (#{timeout}s)", *options do
    expect{ Timeout::timeout(timeout){ yield } }.to_not raise_error(Timeout::Error)
  end
end
