require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Paginasweb
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.i18n.default_locale = "pt-BR"

    config.api_only = true

    config.autoload_paths << Rails.root.join('lib')
  end
end
