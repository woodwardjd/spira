# encoding: utf-8

module Spira
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      desc "creates the Spira configuration at config/spira.yml"

      argument :repository_name, :type => :string, :optional => true

      def self.source_root
        @source_root ||= File.expand_path("../templates", __FILE__)
      end

      def app_name
        Rails::Application.subclasses.first.parent.to_s.underscore
      end

      def create_config_file
        template 'spira.yml', File.join('config', "spira.yml")
      end

    end
  end
end
