require 'vaquero_io_provider_template/version'

module VaqueroIo
  # this module will be extended to ProviderPlugin class in vaquero_io
  module ProviderPluginExtensions
    def create(args, _options = nil)
      "create function with arguments:#{args} and options:#{_options}"
    end

    def destroy(args, _options = nil)
      "destroy function with arguments:#{args} and options:#{_options}"
    end

    def name
      VaqueroIo::ProviderPluginExtensions::PLUGIN_NAME
    end

    def version
      VaqueroIo::ProviderPluginExtensions::VERSION
    end

    def definition
      gem_root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      template_path = VaqueroIo::ProviderPluginExtensions::PLUGIN_NAME + '-' +
                      VaqueroIo::ProviderPluginExtensions::VERSION + '/lib/' +
                      VaqueroIo::ProviderPluginExtensions::PLUGIN_NAME
      providerfile_path = gem_root + template_path + 'providerfile.yml'
      YAML.load_file(providerfile_path)
    end
  end
end
