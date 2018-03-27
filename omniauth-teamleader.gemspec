# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-teamleader/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-teamleader"
  gem.version       = Omniauth::Teamleader::VERSION
  gem.authors       = ["Rémi Delhaye"]
  gem.email         = ["remi@slaask.com"]
  gem.description   = %q{OAuth2 strategy to use with Teamleader API}
  gem.summary       = %q{OAuth2 strategy to use with Teamleader API}
  gem.homepage      = "https://github.com/slaaskhq/omniauth-teamleader"

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
