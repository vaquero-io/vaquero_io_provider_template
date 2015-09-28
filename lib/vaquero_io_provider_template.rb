require 'vaquero_io_provider_template/version'

module VaqueroIo
  # this module will be extended to ProviderPlugin class in vaquero_io
  module ProviderPluginExtensions
    def create(args, options = nil, auth = nil)
      "create function with arguments:#{args} and options:#{options} and auth:#{auth}"
    end

    def destroy(args, options = nil, auth = nil)
      "destroy function with arguments:#{args} and options:#{options} and auth:#{auth}"
    end

    def name
      VaqueroIo::ProviderPluginExtensions::PLUGIN_NAME
    end

    def version
      VaqueroIo::ProviderPluginExtensions::VERSION
    end

    def definition(test_path = nil)
      gem_root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      template_path = VaqueroIo::ProviderPluginExtensions::PLUGIN_NAME + '-' +
                      VaqueroIo::ProviderPluginExtensions::VERSION + '/lib/' +
                      VaqueroIo::ProviderPluginExtensions::PLUGIN_NAME
      providerfile_path = gem_root + template_path + 'providerfile.yml'
      providerfile_path = test_path + 'providerfile.yml' if test_path
      YAML.load_file(providerfile_path)
    end
  end
end
