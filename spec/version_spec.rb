require 'spec_helper'
require 'pathname'
require 'yaml'
require 'vaquero_io_provider_template'

describe 'base provider' do
  let(:test_class) { Class.new { extend VaqueroIo::ProviderPluginExtensions } }
  let(:providerfile) do
    Pathname.new(File.expand_path('../../../', __FILE__)) +
      'vaquero_io_provider_template' + 'lib/' \
      'vaquero_io_provider_template' + 'providerfile.yml'
  end

  it '.version should return the version' do
    expect(test_class.version).to eq '2.0.0'
  end

  it '.name should return the name' do
    expect(test_class.name).to eq 'vaquero_io_provider_template'
  end

  it '.create method should exist' do
    expect(test_class.create('arguments', 'options')).to eq \
      'create function with arguments:arguments and options:options'
  end

  it '.destroy method should exist' do
    expect(test_class.destroy('arguments', 'options')).to eq \
      'destroy function with arguments:arguments and options:options'
  end

  it '.definition function will not work from default gem path'

  it 'the providerfile.yml shoud load without error' do
    expect { YAML.load_file(providerfile) }.to_not raise_error
  end
end

# describe 'provider .definition function' do
#   let(:providerfile) do
#     Pathname.new(File.expand_path('../../../', __FILE__)) +
#       'vaquero_io_provider_template' + 'lib/' \
#       'vaquero_io_provider_template' + 'providerfile.yml'
#   end
#
#   it 'but the providerfile.yml shoud load without error' do
#     expect { YAML.load_file(providerfile) }.to_not raise_error
#   end
#
#   it 'but the providerfile.yml shoud load without error' do
#     expect { YAML.load_file(providerfile) }.to_not raise_error
#   end
# end
