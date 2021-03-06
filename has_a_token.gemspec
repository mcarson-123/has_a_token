# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'has_a_token/version'

Gem::Specification.new do |spec|
  spec.name          = "has_a_token"
  spec.version       = HasAToken::VERSION
  spec.authors       = ["James Phillips"]
  spec.email         = ["jamesdphillips@gmail.com"]
  spec.summary       = "Generate simple/complex/readable tokens in Rails models"
  spec.homepage      = "https://www.github.com/jamesdphillips/has_a_token"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "contracts", "~> 0.11"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "simplecov-html"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-minitest"
  spec.add_development_dependency "guard-rubocop"
end
