source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.3.7'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.3.6'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end
group :development, :test do
  # Testing framework for rails 3.x and 4.x
  gem 'rspec-rails'
  # Some old stuff borrowed from Perl.
  gem 'faker', git: 'git://github.com/stympy/faker.git'
  # Some tools to generate test data
  gem 'factory_girl_rails'
  # Use debugger
  gem 'debugger2'
  # Use capybara (run acceptance test in a browser)
  gem 'capybara'
  # Deploy the right version of PhantomJS using rubygems
  gem 'phantomjs', :require => 'phantomjs/poltergeist'
  # Use phantomjs (acceptance tests are truely headless)
  gem 'poltergeist'
  # Screenshots on failure
  gem 'capybara-screenshot'
  # Database cleaner for test suite
  gem 'database_cleaner'
  # Capybara test in a real browser for kikouloliness
  gem 'selenium-webdriver'
  gem 'listen'
  # Code coverage tool
  gem 'simplecov', :require => false
  gem 'bootstrap-sass', '~> 3.4.1'
  gem 'devise'
  # gem 'RedCloth'
  gem 'carrierwave', '~> 1.0'
gem 'sassc-rails', '>= 2.1.0'
gem "mini_magick"
gem 'jquery-rails'
gem 'popper_js', '~> 1.14.5'
gem 'bootstrap'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

