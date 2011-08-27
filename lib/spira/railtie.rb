require "spira"
require "rails"
require "active_model/railtie"

module Spira
  class Railtie < Rails::Railtie

    initializer "spira.initialize_repository" do |app|
      config_file = Rails.root.join('config/spira.yml')
      if config_file.file?
        config = YAML.load(ERB.new(config_file.read).result)
        env = config[Rails.env]
        if env['adaptor'] == 'rdf-agraph'
          repo = "http://#{env['username']}:#{env['password']}@#{env['host']}:#{env['port']}/#{env['repository']}"
          Spira.add_repository! :default, RDF::AllegroGraph::Repository.new(repo)
        else
          raise "not yet paramaterized out to use anything but RDF::AllegroGraph::Repository (aka rdf-agraph adaptor)"
        end
      end
    end

  end
end
