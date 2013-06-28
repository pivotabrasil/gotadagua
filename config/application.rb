require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Gotadagua
  class Application < Rails::Application
    config.i18n.default_locale = 'pt-BR'
    config.time_zone = 'Brasilia'
    config.generators.stylesheet_engine = :sass
    config.assets.precompile += %w(vendor.js head.js close_for_facebook_login.js)
    config.generators do |g|
      g.assets            false
      g.helper            false
      g.view_specs        false
      g.helper_specs      false
    end
    config.assets.precompile
  end
end
