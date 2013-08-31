source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '3.2.11'

gem 'devise'

gem 'better_errors'
gem "binding_of_caller"
gem "pry"

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'newrelic_rpm'

group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
end

group :test, :development  do
  gem 'capybara'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'ffaker'
end

group :test do
  gem 'rb-fsevent', :require => false
  gem 'growl'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes

  gem "therubyracer"
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  gem "twitter-bootstrap-rails"

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
