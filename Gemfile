source 'https://rubygems.org'
ruby '2.1.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'
gem 'devise'
gem 'pg'
gem 'redis-rails'
# gem 'redis'
gem 'ancestry'
gem 'omniauth-facebook'
gem 'omniauth-twitter'

gem 'activeadmin', github: 'gregbell/active_admin'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'
gem 'compass-rails', '~> 2.0.0'
gem "haml-rails"
gem 'simple_form'
gem 'will_paginate', '~> 3.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
group :production do
  gem 'rails_12factor'
  gem 'postmark-rails'
end 

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'rails3-jquery-autocomplete'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'redactor-rails'
gem "carrierwave"
gem "mini_magick"

# Cron-job scheduler
gem 'sidekiq'
# gem 'sidekiq_mailer'
# gem 'sidekiq-client-cli' #to run sidekiq with whenever
# gem 'sidekiq-middleware' #handle locks

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'whenever', :require => false
  gem 'quiet_assets'
  gem 'jazz_hands'
  gem 'pry'
  gem "rspec-rails"
  gem 'letter_opener'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
gem 'unicorn'
# gem 'unicorn-rails'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
