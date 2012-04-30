# -*- encoding: utf-8 -*-
require File.expand_path('../lib/smartscope/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chris Serino"]
  gem.email         = ["themindoverall@gmail.com"]
  gem.description   = %q{Smartscope checks OAuth scopes and allows namespaces and wildcards.}
  gem.summary       = %q{Smartscope checks OAuth scopes and allows namespaces and wildcards.}
  gem.homepage      = "http://github.com/themindoverall/smartscope"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "smartscope"
  gem.require_paths = ["lib"]
  gem.version       = Smartscope::VERSION
end
