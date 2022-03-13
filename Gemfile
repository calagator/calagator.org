source 'https://rubygems.org'

# Fixing deprecated 'last_comment' method in newer versions of rake
gem 'rake', '< 11.0'

gem 'calagator', '2.0.0.pre.1'

gem 'rails', '~> 5.2'

gem 'rails_12factor', group: :production

gem 'lograge'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 1.3.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 1.0', group: :doc

# Use Puma as the app server
gem 'puma'

gem 'progress_bar'

gem "recaptcha", require: "recaptcha/rails"

gem 'paper_trail_manager', github: 'fusion94/paper_trail_manager', ref: 'b8630cd0e3318ad0929b80a701a18175402a4944'

# Performance and error monitoring
gem 'airbrake'
gem 'newrelic_rpm'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Use RSpec for testing
  gem 'rspec-rails', '~> 3.0'
end

