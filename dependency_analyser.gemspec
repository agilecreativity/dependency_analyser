# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dependency_analyser/version'
Gem::Specification.new do |spec|
  spec.name          = 'dependency_analyser'
  spec.version       = DependencyAnalyser::VERSION
  spec.authors       = ['Burin Choomnuan']
  spec.email         = ['agilecreativity@gmail.com']
  spec.summary       = %q{CLI template for DependencyAnalyser}
  spec.description   = %q{The starting template for DependencyAnalyser}
  spec.homepage      = 'https://github.com/agilecreativity/dependency_analyser'
  spec.required_ruby_version = ">= 1.9.3"
  spec.license       = 'MIT'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.files         = Dir.glob("{bin,lib}/**/*") + %w[Gemfile
                                                       Rakefile
                                                       dependency_analyser.gemspec
                                                       README.md
                                                       CHANGELOGS.md
                                                       LICENSE
                                                       .rubocop.yml
                                                       .gitignore]
  spec.require_paths = ['lib']
  spec.add_runtime_dependency 'activesupport-core-ext', '~> 4.0.0.2'
  spec.add_runtime_dependency 'thor', '~> 0.19.1'
  spec.add_development_dependency 'awesome_print', '~> 1.2.0'
  spec.add_development_dependency 'bundler', '~> 1.7.0'
  spec.add_development_dependency 'gem-ctags', '~> 1.0.6'
  spec.add_development_dependency 'guard', '~> 2.6.1'
  spec.add_development_dependency 'guard-minitest', '~> 2.3.1'
  spec.add_development_dependency 'minitest', '~> 5.4.0'
  spec.add_development_dependency 'minitest-spec-context', '~> 0.0.3'
  spec.add_development_dependency 'pry', '~> 0.10.0'
  spec.add_development_dependency 'rake', '~> 10.3.2'
  spec.add_development_dependency 'rubocop', '~> 0.24.0'
  spec.add_development_dependency 'yard', '~> 0.8.7'
end
