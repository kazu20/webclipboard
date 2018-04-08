require_relative 'boot'

require 'rails/all'
require 'rails_autolink'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Webclipboard
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1


   config.to_prepare do
     Devise::SessionsController.layout "welcome"
     Devise::RegistrationsController.layout proc{ |controller| user_signed_in? ? "welcome" : "welcome" }
     Devise::ConfirmationsController.layout "welcome"
     Devise::UnlocksController.layout "welcome"            
     Devise::PasswordsController.layout "welcome"        
   end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
