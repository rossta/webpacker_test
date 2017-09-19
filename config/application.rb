puts "before WebpackerTest application.rb loads"
require_relative 'boot'

require 'rails/all'
require 'webpacker/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WebpackerTest
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.after_initialize do
      puts "Webpacker after_initialize in app"
      Webpacker.logger = Logger.new("/dev/null")
    end
  end
end
