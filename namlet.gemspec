# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'namlet/version'

Gem::Specification.new do |spec|
  spec.name          = "namlet"
  spec.version       = Namlet::VERSION
  spec.authors       = ["masarakki"]
  spec.email         = ["masaki@hisme.net"]
  spec.summary       = %q{named-let for rspec}
  spec.description   = %q{named-let for rspec}
  spec.homepage      = "https://github.com/masarakki/namlet"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
end
