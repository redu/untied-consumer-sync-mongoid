# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'untied-consumer-sync-mongoid/version'

Gem::Specification.new do |gem|
  gem.name          = "untied-consumer-sync-mongoid"
  gem.version       = Untied::Consumer::Sync::Mongoid::VERSION
  gem.authors       = ["Juliana Lucena"]
  gem.email         = ["julianalucenaa@gmail.com"]
  gem.description   = %q{Untied Consumer Sync Mongoid backend.}
  gem.summary       = %q{A Mongoid backend for Untied::Consumer::Sync.}
  gem.homepage      = "http://github.com/redu/untied-consumer-sync-mongoid"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'

  #gem.add_runtime_dependency 'untied-consumer-sync'
  gem.add_runtime_dependency 'mongoid'

   if RUBY_VERSION < "1.9"
    gem.add_development_dependency "ruby-debug"
  else
    gem.add_development_dependency "debugger"
  end
end
