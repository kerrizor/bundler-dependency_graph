# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bundler/dependency_graph/version'

Gem::Specification.new do |spec|
  spec.name          = "bundler-dependency_graph"
  spec.version       = Bundler::DependencyGraph::VERSION
  spec.authors       = ["Kerri Miller", "Whitney-Rose Levis"]
  spec.email         = ["kerrizor@kerrizor.com", "whitney@nird.us"]

  spec.summary       = %q{Generate a visual representation of your gem dependencies.}
  spec.description   = %q{A bundler plugin that generates a visual representation of your gem dependencies.}
  spec.homepage      = "https://github.com/kerrizor/bundler-dependency_graph"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
