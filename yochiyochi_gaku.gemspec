# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yochiyochi_gaku/version'

Gem::Specification.new do |spec|
  spec.name          = "yochiyochi_gaku"
  spec.version       = YochiyochiGaku::VERSION
  spec.authors       = ["Manabu Seki"]
  spec.email         = ["seki@pinpointservice.com"]

  spec.summary       = 'gaku test gem'
  spec.description   = 'gaku test gem'
  spec.homepage      = "http://amber.fam.cx"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
