# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pushbullet/version'

Gem::Specification.new do |spec|
  spec.name          = "pushbullet"
  spec.version       = Pushbullet::VERSION
  spec.authors       = ["vajapravin"]
  spec.email         = ["vajapravin23@gmail.com"]
  spec.summary       = %q{PushBullet's API enables developers to push to devices that have installed the PushBullet Android app.}
  spec.description   = %q{PushBullet's API enables developers to push to devices that have installed the PushBullet Android app. Authentication is provided by a user's API key, found in their Account Settings. By using an API key, users can allow third party software built on this API without needing to provide their Google account and password.}
  spec.homepage      = "https://github.com/vajapravin/pushbullet"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 0"
  spec.add_development_dependency 'faraday', "~> 0"
  spec.add_development_dependency 'mime-types', "~> 0"

end
