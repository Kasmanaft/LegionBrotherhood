source 'https://rubygems.org'

gem 'rails'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'
gem "devise", ">= 2.1.2"
gem "haml"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development do
  gem "haml-rails"
  gem "hpricot"
  gem "ruby_parser"
  gem "factory_girl_rails"
  gem "rspec-rails"
  gem "thin"
end

group :test do
  gem "database_cleaner"
  gem "email_spec"
  gem "cucumber-rails", require: false
  gem "launchy"
  gem "capybara"
  gem "factory_girl_rails"
  gem "rspec-rails"
end

gem "unicorn", :group => :production

gem "quiet_assets", :group => :development

