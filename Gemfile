source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Use sqlite3 as the database in development
  gem 'sqlite3'
  # Use Puma as the app server
  gem 'puma', '~> 3.7'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'capybara-selenium'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem "capistrano", "~> 3.10", require: false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'bootsnap'
  gem 'xray-rails'
  gem 'bumbler'
end

group :production do
  # Use Postgres by default
  gem 'pg', '~> 0.18'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'hyrax', '2.1.0.beta2'
group :development, :test do
  gem 'bixby'
  gem 'solr_wrapper', '>= 0.3'
end

gem 'devise'
gem 'devise-guests', '~> 0.6'
gem 'jquery-rails'
gem 'rsolr', '>= 1.0'
group :development, :test do
  gem 'fcrepo_wrapper'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'rspec-its'
end

gem 'webpacker', '~> 3.0'

group :test do
  gem 'codeclimate-test-reporter'
  gem 'simplecov'
  gem 'database_cleaner'
end

gem 'config'

gem 'riiif', '~> 1.1'
gem 'iiif_manifest', github: 'samvera-labs/iiif_manifest', branch: 'prezi3'
gem 'hydra-works', github: 'avalonmediasystem/hydra-works', branch: 'av_characterization'
