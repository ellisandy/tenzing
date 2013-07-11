source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'sqlite3'
gem 'zurb-foundation'
gem 'annotate', '~> 2.4.1.beta' 
gem 'nifty-generators'
gem 'simple_form'
gem 'jquery-rails'
gem "bcrypt-ruby", :require => "bcrypt"
gem "highcharts-rails", "~> 3.0.0"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :test, :development do
  gem 'spork', '~> 0.9.0.rc'
  gem "rspec-rails"
  gem 'cucumber',  '1.2.5'
  gem 'cucumber-rails', '1.3.0', :require => false
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'launchy'
end

group :development do
  gem 'growl'
  gem 'guard-cucumber'
  gem 'guard-rspec'
  gem 'guard-spork'
end
group :test do
  gem 'shoulda-matchers'
  gem "mocha", :require => false
  gem "rspec_candy"
end
