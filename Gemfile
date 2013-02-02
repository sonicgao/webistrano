source "https://rubygems.org"

gem "rails", "3.2.9"

gem "exception_notification", "2.6.1"

gem "capistrano"
gem "open4"
gem "syntax"
gem "version_fu", :github => "jmckible/version_fu"
gem "devise"
gem "devise_cas_authenticatable"
gem "devise-encryptable"
gem "rubycas-client"

group :development do
  gem "sqlite3"
  gem "thin"

  gem "debugger"
  gem "pry"
  gem "pry-rails"
end

group :test do
  gem "sqlite3"
  gem "test-unit"
  gem "mocha", "0.12.7"
  gem "factory_girl_rails"
  gem "database_cleaner"
end

group :production do
  gem "mysql2"
  gem "unicorn"
  gem "execjs"
  gem "therubyracer", :platforms => :ruby
end

group :assets do
  gem "jquery-rails"
  gem "uglifier"
end
