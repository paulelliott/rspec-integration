# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name = "rspec-integration"
  s.version = "2.0.0.beta.22"

  s.authors = ["Paul Elliott"]
  s.email = ["paul@hashrocket.com"]
  s.description = "Adds a capybara integration test group to RSpec 2."

  s.files = Dir.glob("{lib,spec}/**/*") + %w(README.markdown)

  s.homepage = "http://github.com/paulelliott/rspec-integration"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.3.7"
  s.summary = "Adds capybara integration test group to RSpec 2."

  s.add_dependency("rspec-rails", ">= 2.0.0.beta.22")
  s.add_dependency("capybara", ">= 0.3.9")
end
