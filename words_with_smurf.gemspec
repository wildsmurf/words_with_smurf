
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "words_with_smurf/version"

Gem::Specification.new do |spec|
  spec.name          = "words_with_smurf"
  spec.version       = WordsWithSmurf::VERSION
  spec.authors       = ["Dylan Pople"]
  spec.email         = ["drpople14@gmail.com"]

  spec.summary       = "This is an example gem"
  spec.homepage      = "https://github.com/wildsmurf/words_with_smurf"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
