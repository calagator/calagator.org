#===[ Gemfile usage ]===================================================
#
# This Gemfile activates the following gems in an unusual way:
#
# * The database gem is retrieved from the `config/database.yml` file.
# * The debugger and code coverage are only activated if a `.dev` file exists.
# * The Sunspot indexer is only activated if enabled in the secrets file.
# * Additional gems may be loaded from a `Gemfile.local` file if it exists.

#=======================================================================

source 'https://rubygems.org'

gem 'sqlite3'
gem 'puma', '2.6.0'

gem 'calagator', github: 'calagator/calagator', branch: 'engine'

gem 'rails', '3.2.19'
gem 'exception_notification', '2.6.1'
gem 'rack-robustness', '~> 1.1.0'

# Some dependencies are only needed for test and development environments. On
# production servers, you can skip their installation by running:
#   bundle install --without development:test
group :development, :test do
  gem 'rspec-activemodel-mocks'
  gem 'rspec-its'
  gem 'rspec-rails', '~> 3'
  gem 'rspec-collection_matchers'
  gem 'spring', '1.1.3'
  gem 'spring-commands-rspec', '1.0.2'
  gem 'factory_girl_rails'
  gem 'faker', '1.4.3'

  gem 'capistrano', '3.0.1'
  gem 'capistrano-rails', '1.0.0'
  gem 'capistrano-bundler', '1.0.0'

  gem 'byebug'
end

group :development do
  gem 'better_errors', '1.1.0'
  gem 'binding_of_caller', '0.7.2'
end

group :test do
  gem 'capybara', '2.4.3'
  gem 'coveralls', '0.7.0', require: false
  gem 'database_cleaner'
  gem 'poltergeist', '1.5.1'
  gem 'timecop', '~> 0.7'
  gem 'webmock', '~> 1.20'
  gem 'simplecov'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'sass', '~> 3.2.14'
  # gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  # Minify assets.  Requires a javascript runtime, such as 'therubyracer'
  # above. You will also need to set 'config.assets.compress' to true in
  # config/environments/production.rb
  gem 'uglifier', '>= 1.0.3'
end

