# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "pry-docmore"
  gem.homepage = "http://github.com/ryanjosephking/pry-docmore"
  gem.license = "MIT"
  gem.summary = %Q{Beyond pry-doc: keywords, dollar-vars, etc.}
  gem.description = %Q{So things like `? alias` work from within pry. Scope is pretty much open beyond that... send in your ideas.}
  gem.email = "pry-docmore@sharpsaw.org"
  gem.authors = %w(rking banisterfiend)
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

# TODO
#RSpec::Core::RakeTask.new(:rcov) do |spec|
#  spec.pattern = 'spec/**/*_spec.rb'
#  spec.rcov = true
#end

task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new
