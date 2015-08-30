lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vaquero_io_provider_template/version'
Gem::Specification.new do |gem|
  gem.name          = VaqueroIo::ProviderPluginExtensions::PLUGIN_NAME
  gem.version       = VaqueroIo::ProviderPluginExtensions::VERSION
  gem.authors       = ['Nic Cheneweth', 'Gregory Ruiz-ade']
  gem.email         = ['Nic.Cheneweth@thoughtworks.com',
                       'gregory.ruiz-ade@activenetwork.com']
  gem.summary       = 'Reference provider plugin gem template'
  gem.description   = 'Provider plugin gem framework with required module method and \
                       basic testing structure for creating custom vaquero_io providers'
  gem.license       = 'Apache 2.0'
  gem.homepage      = 'http://vaquero.io/'

  gem.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.test_files    = gem.files.grep(%r{/^\/(test|spec|features)/})
  gem.require_paths = ['lib']
  gem.required_ruby_version = '>= 2.0.0'

  gem.add_development_dependency 'bundler',         '~> 1.7'
  gem.add_development_dependency 'rake',            '~> 10.0'
  gem.add_development_dependency 'rubocop',         '~> 0.30'
  gem.add_development_dependency 'rspec',           '~> 3.0'
  # gem.add_development_dependency 'simplecov',       '~> 0.10'
end
