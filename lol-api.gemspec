# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lol/api/version'

Gem::Specification.new do |spec|
  spec.name          = "lol-api"
  spec.version       = LOL::Api::VERSION
  spec.authors       = ["Francisco Martins"]
  spec.email         = ["franciscomxs@gmail.com"]

  spec.summary       = %q{League of Legends Api}
  spec.description   = %q{A lightweight and flexible library for League Of Legends Api}
  spec.homepage      = "https://github.com/franciscomxs/lol-api"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://mygemserver.com'
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.10.3"
  spec.add_development_dependency "vcr", "~> 3.0.3"
  spec.add_development_dependency "webmock", "~> 1.22.3"

  spec.add_dependency "faraday", "~> 0.9.2"
  spec.add_dependency "activesupport", "~> 5.0.0"
end
