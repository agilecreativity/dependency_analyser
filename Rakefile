require 'bundler/gem_tasks'
require 'rake/testtask'
project_name = 'dependency_analyser'
Rake::TestTask.new do |t|
  t.libs << "lib/#{project_name}"
  t.test_files = FileList["test/lib/#{project_name}/test_*.rb"]
  t.verbose = true
end

task default: [:test]
task :pry do
  require 'pry'
  require 'awesome_print'
  require_relative 'lib/dependency_analyser'
  include DependencyAnalyser
  ARGV.clear
  Pry.start
end
