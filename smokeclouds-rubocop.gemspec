# frozen_string_literal: true

require_relative 'lib/smokeclouds/rubocop/version'

Gem::Specification.new do |spec|
  spec.name          = 'smokeclouds-rubocop'
  spec.version       = Smokeclouds::Rubocop::VERSION
  spec.authors       = ['James Cox']
  spec.email         = ['james@imaj.es']

  spec.summary       = 'A kept up-to-date rubocop configuration from an experienced ruby dev'
  spec.homepage      = 'https://github.com/imajes/smokeclouds-rubocop'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = 'https://github.com/imajes/smokeclouds-rubocop/blob/main/CHANGELOG.md'

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }

  spec.require_paths = ['lib']
  spec.files = Dir[
    '{config,lib,spec}/**/*',
    '.rubocop.yml',
    '*.md',
    '*.gemspec',
    'Gemfile',
  ]

  spec.add_dependency 'rubocop', '~> 1.12', '>= 1.12.0'
  spec.add_dependency 'rubocop-faker', '~> 1.1', '>= 1.1.0'
  spec.add_dependency 'rubocop-performance', '~> 1.10', '>= 1.10.2'
  spec.add_dependency 'rubocop-rails', '~> 2.9', '>= 2.9.1'
  spec.add_dependency 'rubocop-rake', '~> 0.5', '>= 0.5.1'
  spec.add_dependency 'rubocop-rspec', '~> 2.2', '>= 2.2.0'
  spec.add_dependency 'rubocop-thread_safety', '~> 0.4', '>= 0.4.2'

  spec.add_development_dependency 'pry', '~> 0.14.1'
  spec.add_development_dependency 'rspec', '~> 3.10.0'
end
