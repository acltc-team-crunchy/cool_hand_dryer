# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cool_hand_dryer/version'

Gem::Specification.new do |spec|
  spec.name          = "cool_hand_dryer"
  spec.version       = CoolHandDryer::VERSION
  spec.authors       = ["Mark Richardson"]
  spec.email         = ["markeban@yahoo.com"]

  spec.summary       = %q{Obviously, to dry hands.}
  spec.description   = %q{ahhh, dry them.}
  spec.homepage      = "https://github.com/acltc-team-crunchy/cool_hand_dryer"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # spec.add_dependency "faker", "~> 1.1.2"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
