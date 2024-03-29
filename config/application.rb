# frozen_string_literal: true

require_relative "boot"

require "rails/all"
require "sprockets/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Slovnik
   class Application < Rails::Application
      # Initialize configuration defaults for originally generated Rails version.
      config.load_defaults 5.2

      # Settings in config/environments/* take precedence over those specified here.
      # Application configuration can go into files in config/initializers
      # -- all .rb files in that directory are automatically loaded after loading
      # the framework and any gems in your application.
      config.active_record.legacy_connection_handling = false

      folders = %w(app/models/dictum)
      folders.each do |folder|
         config.autoload_paths << Rails.root.join(folder)
      end

      config.exceptions_app = self.routes
   end
end
