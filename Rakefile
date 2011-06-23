require "rake/rdoctask"

begin
  require "metric_fu"
rescue LoadError
end

desc "Default: run all specs"
task :default => :spec

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new
rescue LoadError
  $stderr.puts "Please install RSpec 2"
end

Rake::RDocTask.new do |rd|
  rd.main = "README"
  rd.title = "Documentation for ContentFor"
  rd.rdoc_files.include("README.rdoc", "LICENSE", "lib/**/*.rb")
  rd.rdoc_dir = "doc"
end

