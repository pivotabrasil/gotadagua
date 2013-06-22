Gotadagua::Application.configure do
  Slim::Engine.set_default_options pretty: true, sort_attrs: false
  Slim::Engine.set_default_options format: :html5
  Slim::Engine.set_default_options tabsize: 2
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.action_mailer.default_url_options = { host: ENV['DOMAIN'] }
end
