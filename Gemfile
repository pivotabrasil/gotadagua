ruby '2.0.0'
source 'https://rubygems.org'

gem 'rails',                  '4.0.0.rc2'
gem 'unicorn',                '~> 4.6.2'
gem 'mini_magick',            '~> 3.6.0'
gem 'fog',                    '~> 1.12.1'
gem 'rufus-scheduler',        '~> 2.0.19'
gem 'kaminari',               '~> 0.14.1'
gem 'memcachier',             '~> 0.0.2'
gem 'newrelic_rpm',           '~> 3.6.3.111'
gem 'simple_form',            '~> 3.0.0.rc'
gem 'rack-timeout',           '~> 0.0.4'
gem 'devise',                 '~> 3.0.0.rc'
gem 'omniauth-facebook',      '~> 1.4.1'
gem 'carrierwave',            '~> 0.8.0'
gem 'carrierwave-processing', '~> 0.0.2'
gem 'kaminari',               '~> 0.14.1'

# frontend
gem 'slim-rails',        '~> 2.0.1'
gem 'jbuilder',          '~> 1.0.1'
gem 'sass-rails',        '~> 4.0.0.rc2'
gem 'uglifier',          '>= 1.3.0'
gem 'coffee-rails',      '~> 4.0.0'
gem 'jquery-rails',      '~> 3.0.1'
gem 'oily_png',          '~> 1.1.0'
gem 'bourbon',           '~> 3.1.8'
gem 'neat',              '~> 1.3.0'
gem 'selectivizr-rails', '~> 1.0.1'
gem 'facebook_share',    '~> 0.0.6'


group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'foreman',           '~> 0.63.0'
  gem 'better_errors',     '~> 0.9.0'
  gem 'binding_of_caller', '~> 0.7.1'
end

group :test, :development do
  gem 'sqlite3',          '~> 1.3.7'
  gem 'rspec-rails',      '~> 2.13.1'
  gem 'capybara',         '~> 2.1.0'
  gem 'launchy',          '~> 2.3.0'
  gem 'database_cleaner', '~> 0.9.1'
end

group :test do
  gem 'factory_girl_rails', '~> 4.2.1'
  gem 'shoulda-matchers',   '~> 2.1.0'
  gem 'simplecov',          '~> 0.7.1', require: false
end
