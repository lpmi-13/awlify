# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'awlify/version'

Gem::Specification.new do |spec|
  spec.name          = "awlify"
  spec.version       = Awlify::VERSION
  spec.authors       = ["lpmi-13"]
  spec.email         = ["leskis@gmail.com"]
  spec.summary       = %q{search a string for AWL equivalents and substitute}
  spec.description   = %q{this takes a string, searching for any words that have AWL synonyms, then randomly substitutes
                          one for the word in question. In future versions will prompts users to select from possible variants}
  spec.homepage      = "http://sample.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
