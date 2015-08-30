require 'bundler'
require 'rspec/core/rake_task'

Bundler::GemHelper.install_tasks
RSpec::Core::RakeTask.new(:spec)

task :style do
  sh 'rubocop'
end

task default: [:spec, :style]
