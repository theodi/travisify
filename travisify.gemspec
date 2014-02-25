# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "travisify"
  spec.version       = "0.0.1"
  spec.authors       = ["James Smith", "Stuart Harrison"]
  spec.email         = ["tech@theodi.org"]
  spec.description   = "A tool to create a .travis.yml file for ODI projects"
  spec.summary       = "Creates a .travis.yml file, including CURRENT tagging. Also, automatically loads from .env and encrypts into the travis.yml file."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_dependency "dotenv"
  spec.add_dependency "typhoeus"
  spec.add_dependency "travis"
  spec.add_dependency "travis-lint"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
