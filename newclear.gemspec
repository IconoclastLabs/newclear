# -*- encoding: utf-8 -*-
VERSION = "1.1"

Gem::Specification.new do |spec|
  spec.name          = "newclear"
  spec.version       = VERSION
  spec.authors       = ["Gant"]
  spec.email         = ["GantMan@gmail.com"]
  spec.description   = %q{Add the nuke/newclear rake tasks to completely rebuild your RubyMotion project.}
  spec.summary       = %q{rake task to rebuild entire rubymotion project from scratch.}
  spec.homepage      = "https://github.com/IconoclastLabs/newclear"
  spec.license       = "MIT"

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "reset-sim"
  spec.add_development_dependency "rake"
end
