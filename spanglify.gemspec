lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "spanglify/version"

Gem::Specification.new do |spec|
  spec.name          = "spanglify"
  spec.version       = Spanglify::VERSION
  spec.authors       = ["Stephanie Fischler"]
  spec.email         = ["sjfischler@gmail.com"]

  spec.summary       = %q{Convert English phrases into the Spanish-English hybrid languagh, Spanglish}
  spec.description   = %q{Engish to Spanglish translation}
  spec.homepage      = "http://rubygems.org/gems/spanglify"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir['lib/**/*.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
