# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'justify/version'

Gem::Specification.new do |spec|
  spec.name          = "justify"
  spec.version       = Justify::VERSION
  spec.authors       = ["Paolo Perego"]
  spec.email         = ["thesp0nge@gmail.com"]
  spec.description   = %q{justify is a gem helping in break very long string in a fixed width text}
  spec.summary       = %q{justify is a gem helping in break very long string in a fixed width text}
  spec.homepage      = "http://armoredcode.com/how-to-wrap-a-long-text-to-fit-your-terminal-width-in-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "ipsum"
end
