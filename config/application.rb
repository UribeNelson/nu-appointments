require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NuAppointments
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.exceptions_app = routes
    excluded_routes = ->(env) { !env['PATH_INFO'].match(%r{^/api}) }
    config.middleware.use OliveBranch::Middleware,
                          inflection: 'camel',
                          exclude_params: excluded_routes,
                          exclude_response: excluded_routes
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
