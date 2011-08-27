#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-
$:.unshift File.expand_path('../lib', __FILE__)
require 'spira/version'


Gem::Specification.new do |gem|
  gem.version            = Spira::VERSION.to_s
  gem.date               = Time.now.strftime('%Y-%m-%d')

  gem.name               = 'spira'
  gem.homepage           = 'http://spira.rubyforge.org'
  gem.license            = 'Public Domain' if gem.respond_to?(:license=)
  gem.summary            = 'A framework for using the information in RDF.rb repositories as model objects.'
  gem.description        = 'Spira is a framework for using the information in RDF.rb repositories as model objects.'
  gem.rubyforge_project  = 'spira'

  gem.authors            = ['Ben Lavender']
  gem.email              = 'blavender@gmail.com'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(CHANGES.md AUTHORS README UNLICENSE) + Dir.glob('lib/**/*')
  gem.bindir             = %w(bin)
  gem.executables        = %w()
  gem.default_executable = gem.executables.first
  gem.require_paths      = %w(lib)
  gem.extensions         = %w()
  gem.test_files         = %w()
  gem.has_rdoc           = false
  gem.has_yardoc         = true if gem.respond_to?(:has_yardoc)

  gem.required_ruby_version      = '>= 1.8.2'
  gem.requirements               = []
  gem.add_development_dependency 'rdf-spec',       '>= 0.2.2'
  gem.add_development_dependency 'rspec',          '>= 1.3.0'
  gem.add_development_dependency 'yard' ,          '>= 0.5.3'
  gem.add_runtime_dependency     'rdf',            '>= 0.2.3'
  gem.add_runtime_dependency     'rdf-isomorphic', '>= 0.3.0'
  gem.add_runtime_dependency     'promise',        '>= 0.3.0'
  gem.post_install_message       = nil
end
