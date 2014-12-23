# -*- encoding: utf-8 -*-
VERSION = "0.3"

Gem::Specification.new do |spec|
  spec.name          = "newclear"
  spec.version       = VERSION
  spec.authors       = ["Gant"]
  spec.email         = ["GantMan@gmail.com"]
  spec.description   = %q{Write a gem description}
  spec.summary       = %q{Write a gem summary}
  spec.homepage      = ""
  spec.license       = ""

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "reset-sim"
  spec.add_development_dependency "rake"
end
