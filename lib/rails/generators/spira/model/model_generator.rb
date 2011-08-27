# encoding: utf-8

module Spira
  module Generators
    class ModelGenerator < Rails::Generators::NamedBase
      desc 'Creates a spira model'
      ## TODO: pull "base_uri" from existing application config
      argument :name, :type => :string
      argument :attributes, :type => :array, :default => [], :banner => "field:type field:type"
      check_class_collision

      def self.source_root
        @source_root ||= File.expand_path("../templates", __FILE__)
      end

      def app_name
        Rails::Application.subclasses.first.parent.to_s.underscore
      end

      def create_model_file
        template 'model.rb', File.join('app/models', "#{file_name}.rb")
      end

      hook_for :test_framework
    end
  end
end
