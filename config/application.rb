require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Avalon
  class Application < Rails::Application
    require 'rack/cors'
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '/concern/*/*/manifest*', headers: :any, methods: [:head, :get]
        resource '/iiif_av/*', headers: :any, methods: [:head, :get], expose: ['Content-Security-Policy']
        resource '/downloads/*', headers: :any, methods: [:head, :get]
      end
    end

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
