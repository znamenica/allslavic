# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# ruby setup
gem "bundler", "~> 2.3.25"

## Environment
gem "dotenv-rails", require: "dotenv/rails-now", github: "majioa/dotenv"

gem "pg"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 7.0", ">= 7.0.4"
# Use Puma as the app server
gem "puma", "~> 5.6"
# Use SCSS for stylesheets
gem "sprockets-rails"

## Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 2.7.2"

# js
gem "turbolinks"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
gem "oj"
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.1.0", require: false

gem "tzinfo-data"

# API
# gem 'tiun', path: '../tiun'
# gem 'tiun', github: 'majioa/tiun'

# auth
gem "devise"
gem "omniauth"

# mailing / required
gem "net-imap"
gem "net-pop"
gem "net-smtp"

# pagination
gem "kaminari", ">= 1.1.1"

## authorization
gem "pundit"
gem "rolify"

## controllers
gem "has_scope", ">= 0.7.2"

# caching
gem "jsonize", "~> 0.1.1"
# gem 'jsonize', path: '/usr/local/home/majioa/git/jsonize'
gem "redisize", "~> 0.1.4"
# gem 'redisize', path: '/usr/local/home/majioa/git/redisize'

group :development, :test do
   # Call 'byebug' anywhere in the code to stop execution and get a debugger console
   gem "factory_bot"
   gem "faker"
   gem "ffaker"
   gem "pry-byebug"
   gem "bundle-audit"
   gem "brakeman"
   gem "rubocop", require: false
   gem "rubocop-checkstyle_formatter", require: false
   gem "rubocop-faker", require: false
   gem "rubocop-i18n", require: false
   gem "rubocop-md", require: false
   gem "rubocop-performance", require: false
   gem "rubocop-rails", require: false
   gem "rubocop-rails_config", require: false
   gem "rubocop-rake", require: false
end

group :development do
   # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
   gem "listen", ">= 3.0.5", "< 3.2"
   gem "web-console", ">= 3.3.0"
   # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
   gem "bcrypt_pbkdf", "~> 1.0"
   gem "capistrano", "~> 3.17", require: false
   gem "capistrano3-nginx", require: false, git: "https://github.com/treenewbee/capistrano3-nginx.git"
   gem "capistrano-bundler", require: false
   gem "capistrano-rails", "~> 1.6", require: false
   gem "capistrano-rvm", require: false
   gem "capistrano-systemd-multiservice", require: false, git: "https://github.com/majioa/capistrano-systemd-multiservice.git"
   gem "capistrano-db-tasks", require: false, github: "majioa/capistrano-db-tasks", ref: "devel"
   # gem "capistrano-db-tasks", require: false, path: '/usr/local/home/majioa/git/capistrano-db-tasks'
   gem "ed25519", "~> 1.2"
   gem "spring"
   gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
   # Adds support for Capybara system testing and selenium driver
   gem "capybara", ">= 2.15"
   gem "cucumber-rails", require: false
   gem "database_rewinder"
   gem "selenium-webdriver"
   gem "shoulda-matchers-cucumber", ">= 1.0.1"
   # Easy installation and use of chromedriver to run system tests with Chrome
   gem "chromedriver-helper"
   gem "database_cleaner-active_record"
   gem "fakeredis"
   gem "code-scanning-rubocop"
end

group :production, :staging do
   gem "rack-cors", require: "rack/cors"
   gem "sentry-rails"
   gem "sentry-ruby"
   gem "sentry-sidekiq"
   # gem 'redis-rack-cache'
   # gem "snappy"
end

group :production, :development, :staging do
   # caching
   ## Use Redis adapter to run Action Cable in production
   ## cache, session, rack / json, with usage delayed_jobs
   gem "hiredis-client"
   gem "redis", "~> 5.0"
   # gem "redis-rails-instrumentation"
   gem "sidekiq", ">= 6.4.0", "< 7.2.0", require: %w(sidekiq sidekiq/web)
   gem "sidekiq-limit_fetch"
   gem "sidekiq-worker-killer"
   gem "pry-remote"
end
