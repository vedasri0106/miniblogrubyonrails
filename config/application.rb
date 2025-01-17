require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"      # If you're using Active Model (for validations, etc.)
require "action_controller/railtie" # For controllers
require "action_mailer/railtie"     # For mailer support
require "action_view/railtie"       # For views
require "action_cable/engine"       # For ActionCable (WebSockets)
# Skip ActiveRecord since we're not using a database
# require "active_record/railtie"   # Uncomment this only if using a database (ActiveRecord)

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MiniBlog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0

    # Skip ORM (ActiveRecord) since we are not using it
    config.generators do |g|
      g.orm :skip
    end

    # Other configurations...
  end
end