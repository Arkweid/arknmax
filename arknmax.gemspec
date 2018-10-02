
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "arknmax/version"

Gem::Specification.new do |spec|
  spec.name          = "arknmax"
  spec.version       = Arknmax::VERSION
  spec.authors       = ["A.A.Abroskin"]
  spec.email         = ["a.a.abroskin@yandex.ru"]

  spec.summary       = "nmax function"
  spec.description   = "nmax function"
  spec.homepage      = "https://github.com/Arkweid/arknmax"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.3.1'

  spec.files         = `git ls-files`.split($/).select { |p| p.match(%r{^lib/}) } +
    %w(README.md CHANGELOG.md LICENSE.txt)

  spec.bindir        = "bin"
  spec.executables   = "arknmax"
  spec.require_paths = ["lib"]

  spec.add_dependency "algorithms", "~> 0.6.1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rubocop", "~> 0.59"
  spec.add_development_dependency "rspec", "~> 3.8"
  spec.add_development_dependency "coveralls"
end
