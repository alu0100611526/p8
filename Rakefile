$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

task :default => :bin

desc "Run lib/matriz.rb"
task :bin do
  sh "cd spec \n rspec -I. matriz_spec.rb"
end

desc "Run tests with --format documentation"
task :test do

  sh "cd spec \n rspec -I. matriz_spec.rb --format documentation"
end

desc "Run tests with format: html"
task :thtml do
  sh "cd spec \n rspec matriz_spec.rb --format html"
end

