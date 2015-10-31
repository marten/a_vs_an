# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'a_vs_an/version'

Gem::Specification.new do |spec|
  spec.name          = "a_vs_an"
  spec.version       = AVsAn::VERSION
  spec.authors       = ["Marten Veldthuis"]
  spec.email         = ["marten@veldthuis.com"]

  spec.summary       = %q{Library to determine the indefinite article of words.}
  spec.homepage      = "https://github.com/marten/a_vs_an"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
