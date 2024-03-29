# frozen_string_literal: true

Rails.application.configure do
   # Settings specified here will take precedence over those in config/application.rb.

   # Code is not reloaded between requests.
   config.cache_classes = true

   # Eager load code on boot. This eager loads most of Rails and
   # your application in memory, allowing both threaded web servers
   # and those relying on copy on write to perform better.
   # Rake tasks automatically ignore this option for performance.
   config.eager_load = true

   # Full error reports are disabled and caching is turned on.
   config.consider_all_requests_local       = false
   config.action_controller.perform_caching = true

   # Ensures that a master key has been made available in either ENV["RAILS_MASTER_KEY"]
   # or in config/master.key. This key is used to decrypt credentials (and other encrypted files).
   # config.require_master_key = true

   # Disable serving static files from the `/public` folder by default since
   # Apache or NGINX already handles this.
   config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?

   # Compress JavaScripts and CSS.
   config.assets.js_compressor = Uglifier.new(harmony: true)
   # config.assets.css_compressor = :sass

   # Do not fallback to assets pipeline if a precompiled asset is missed.
   config.assets.compile = false

   # `config.assets.precompile` and `config.assets.version` have moved to config/initializers/assets.rb

   # Enable serving of images, stylesheets, and JavaScripts from an asset server.
   # config.action_controller.asset_host = 'http://assets.example.com'

   # Specifies the header that your server uses for sending files.
   # config.action_dispatch.x_sendfile_header = 'X-Sendfile' # for Apache
   # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for NGINX

   # Store uploaded files on the local file system (see config/storage.yml for options)
   config.active_storage.service = :local

   # Mount Action Cable outside main process or domain
   # config.action_cable.mount_path = nil
   # config.action_cable.url = 'wss://example.com/cable'
   # config.action_cable.allowed_request_origins = [ 'http://example.com', /http:\/\/example.*/ ]

   # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
   # config.force_ssl = true

   # Use the lowest log level to ensure availability of diagnostic information
   # when problems arise.
   config.log_level = :info

   # Prepend all log lines with the following tags.
   config.log_tags = [:request_id]

   # Use a different cache store in production.
   # config.cache_store = :mem_cache_store

   # Use a real queuing backend for Active Job (and separate queues per environment)
   # config.active_job.queue_adapter     = :resque
   # config.active_job.queue_name_prefix = "allslavic_#{Rails.env}"

   config.action_mailer.perform_caching = true

   # Ignore bad email addresses and do not raise email delivery errors.
   # Set this to true and configure the email server for immediate delivery to raise delivery errors.
   # config.action_mailer.raise_delivery_errors = false

   # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
   # the I18n.default_locale when a translation cannot be found).
   config.i18n.fallbacks = true

   # Send deprecation notices to registered listeners.
   config.active_support.deprecation = :notify

   # Use default logging formatter so that PID and timestamp are not suppressed.
   config.log_formatter = ::Logger::Formatter.new

   # Use a different logger for distributed setups.
   # require 'syslog/logger'
   # config.logger = ActiveSupport::TaggedLogging.new(Syslog::Logger.new 'app-name')

   if ENV["RAILS_LOG_TO_STDOUT"].present?
      logger           = ActiveSupport::Logger.new(STDOUT)
      logger.formatter = config.log_formatter
      config.logger    = ActiveSupport::TaggedLogging.new(logger)
   end

   # Do not dump schema after migrations.
   config.active_record.dump_schema_after_migration = false

   config.action_mailer.default_url_options = { host: "allslavic.org", port: 80 }

   config.active_job.queue_adapter = :sidekiq

   redis_uri = ENV.fetch("REDIS_URL", nil)

   if redis_uri
      config.cache_store = :redis_cache_store, {
         url: File.join(redis_uri, "0"),
         driver: :hiredis,
         error_handler: -> (method:, returning:, exception:) {
            # reports to Sentry
            Sentry.capture_exception exception, level: "warning", tags: { method:, returning: }
         },
         expires_in: 1.day,
      }

      config.session_store = :redis_session_store, {
         redis: {
            driver: :hiredis,
            expire_after: 120.minutes,  # cookie expiration
            ttl: 120.minutes,           # Redis expiration, defaults to 'expire_after'
            key_prefix: "allslavic:session:",
            url: File.join(redis_uri, "1")
         }
      }

   # config.action_dispatch.rack_cache = {
   #   expire_after: 1.day,
   #   metastore: "redis://localhost:6379/2/metastore",
   #   entitystore: "redis://localhost:6379/2/entitystore",
   #   compress: Snappy
   # }

   else
      config.cache_store = :memory_store, { size: 16.megabytes }

      config.session_store = :cookie_store, {
         key: "_#{Rails.application.class.name.split("::").first.downcase}_session",
         domain: "127.0.0.1"
      }
   end
end
