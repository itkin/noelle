# -*- encoding : utf-8 -*-
Noelle::Application.configure do
  # Settings specified here will take precedence over those in config/environment.rb

  # The production environment is meant for finished, "live" apps.
  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Specifies the header that your server uses for sending files
  #config.action_dispatch.x_sendfile_header = "X-Sendfile"

  # For nginx:
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect'

  # If you have no front-end server that supports something like X-Sendfile,
  # just comment this out and Rails will serve the files

  # See everything in the log (default is :info)
  # config.log_level = :debug

  # Use a different logger for distributed setups
  # config.logger = SyslogLogger.new

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Disable Rails's static asset server
  # In production, Apache or nginx will already do this
  config.serve_static_assets = false

  # Enable serving of images, stylesheets, and javascripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  config.action_mailer.default_url_options = { :host => 'noellechiffre.com' }
  config.action_mailer.delivery_method = :sendmail
  config.action_mailer.smtp_settings = {
    :address   => 'localhost',
    :port      => 25
  }

  #ActiveSupport.on_load(:after_initialize) do
  #  Haml::Template.options[:ugly] = false
  #end
  
  config.middleware.use "::ExceptionNotifier",
     :email_prefix => "[Noelle] ",
     :sender_address => %{"Rails" <notifier@w3bflows.com>},
     :exception_recipients => %w{nicolas@w3bflows.com}


  config.assets.compress = false
  config.assets.compile = true
  config.assets.digest = true

  # Remeber to set _Expires_ at webserver level since we don't do it at Rails level
  config.serve_static_assets = false

  config.assets.precompile += %w{admin.js admin.css galleria/src/themes/noelle/galleria.noelle.js}

  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # config.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify
end
