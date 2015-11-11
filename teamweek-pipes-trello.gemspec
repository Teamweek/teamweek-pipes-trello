# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'teamweek/pipes/trello/version'

Gem::Specification.new do |spec|
  spec.name          = "teamweek-pipes-trello"
  spec.version       = Teamweek::Pipes::Trello::VERSION
  spec.authors       = ["Toggl OÜ"]
  spec.email         = ["support@teamweek.com"]

  spec.summary       = %q{Teamweek Pipes integrations with Trello.}
  spec.description   = 'Ruby gem to get Trello objects and translate them into Teamweek import objects'
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ruby-trello", "~> 1.3.0"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
