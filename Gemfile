source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Use jquery UI
gem 'jquery-ui-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'kaminari'

gem 'mandrill_mailer'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
group :development do
  gem 'capistrano', '~> 3.2.0'
  gem 'capistrano-bundler', '~> 1.1.0'
  gem 'capistrano-rails', '~> 1.1.0'
  gem 'rails-erd'
end

# Use debugger
# gem 'debugger', group: [:development, :test]

# Use Devise for user authentication
gem 'devise'

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'

  # Use Pry for debugging
  gem 'pry'

  gem 'spring-commands-rspec'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'rb-fsevent' if `uname` =~ /Darwin/
end

group :test do
  gem 'fabrication'
  gem 'faker'
end

group :production do
  # Use MySql as the database
  gem 'mysql2'
end