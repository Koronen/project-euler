guard 'bundler' do
  watch('Gemfile')
end

guard 'minitest', test_file_patterns: '*_{spec,acceptance}.rb' do
  watch(%r{^spec/(.*)_spec\.rb})
  watch(%r{^spec/(.*)_acceptance\.rb})
  watch(%r{^lib/(.*)([^/]+)\.rb}) { |m| ["spec/#{m[1]}#{m[2]}_spec.rb", "spec/#{m[1]}#{m[2]}_acceptance.rb"] }
  watch('spec/spec_helper.rb')    { ["spec", "acceptance"] }
end
