begin
  require 'bundler'

  Bundler::GemHelper.install_tasks
rescue LoadError
  $stderr.puts "Please install bundler with: gem install bundler"
end

$LOAD_PATH << File.expand_path('../lib', __FILE__)
require "sinatra/content_for2/version"

desc "Default: run all specs"
task :default => :spec

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new
rescue LoadError
  $stderr.puts "Please install RSpec 2"
end

begin
  require 'yard'
  YARD::Rake::YardocTask.new do |t|
    t.options = ['--title', "Sinatra::ContentFor2 #{Sinatra::ContentFor2::VERSION}"]
    if defined?(Encoding)
      t.options << '--charset'
      t.options << 'utf-8'
    end
  end
rescue LoadError
  $stderr.puts "Yard is not installed. Please run gem install yard"
end

