# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'WHO_HIV/version'

Gem::Specification.new do |spec|
  spec.name          = "WHO_HIV"
  spec.version       = WHOHIV::VERSION
  spec.authors       = ["owlbytes"]
  spec.email         = ["neshah07@gmail.com"]
  spec.description   = %q{This gem gives you access to World Health Organization's statistics for specific countries. The quality, timeliness, and accuracy of the statistics is dependent on the WHO. }
  spec.summary       = %q{This gem gives you access to World Health Organization's statistics for specific countries. The quality, timeliness, and accuracy of the statistics is dependent on the WHO.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "nokogiri"
end
