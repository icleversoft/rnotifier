# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rnotifier/version'

Gem::Specification.new do |gem|
  gem.name          = "rnotifier"
  gem.version       = Rnotifier::VERSION
  gem.authors       = ["icleversoft"]
  gem.email         = ["iphone@icleversoft.com"]
  gem.description   = "A simple notifier server that utilizes Redis notification system"
  gem.summary       = "A simple notifier server that utilizes Redis notification system"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
