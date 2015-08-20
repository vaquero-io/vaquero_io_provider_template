lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
Gem::Specification.new do |gem|
  gem.name          = 'vaquero_io_provider_template'
  gem.version       = '0.1.0'
  gem.authors       = ['Nic Cheneweth', 'Gregory Ruiz-ade']
  gem.email         = ['Nic.Cheneweth@thoughtworks.com',
                       'gregory.ruiz-ade@activenetwork.com']
  gem.summary       = 'Reference provider plugin gem template'
  gem.license       = 'Apache 2.0'
  gem.homepage      = 'http://vaquero.io/'

  gem.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.test_files    = gem.files.grep(%r{/^\/(test|spec|features)/})
  gem.require_paths = ['lib']
  gem.required_ruby_version = '>= 2.0.0'

  gem.add_development_dependency 'bundler',         '~> 1.7'
  gem.add_development_dependency 'rake',            '~> 10.0'
  gem.add_development_dependency 'rubocop',         '~> 0.30'
  gem.add_development_dependency 'aruba',           '~> 0.6'
  gem.add_development_dependency 'cucumber',        '~> 2.0'
  gem.add_development_dependency 'rspec',           '~> 3.0'
  # gem.add_development_dependency 'fakefs',          '~> 0.6'
  # gem.add_development_dependency 'simplecov',       '~> 0.10'
  # gem.add_development_dependency 'yard',            '~> 0.8'
  # gem.add_development_dependency 'guard',           '~> 2.0'
  # gem.add_development_dependency 'guard-rubocop',   '~> 1.2'
  # gem.add_development_dependency 'guard-rspec',     '~> 4.5'
  # gem.add_development_dependency 'guard-cucumber',  '~> 1.6.0'
  # gem.add_development_dependency 'guard-yard',      '>= 2.1.4'
end
