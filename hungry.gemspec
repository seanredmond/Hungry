# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hungry/version'

Gem::Specification.new do |gem|
  gem.name          = "hungry"
  gem.version       = Hungry::VERSION
  gem.authors       = ["Sean Redmond"]
  gem.email         = ["sean@litot.es"]
  gem.description   = %q{Ruby wrapper for NYPL menus API}
  gem.summary       = %q{Ruby wrapper for NYPL menus API}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "faraday", ">= 0.8.4"
  gem.add_dependency "json"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rspec-mocks"
end
