source 'http://rubygems.org'

gem 'rails', '3.1.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
	gem 'dynamic_form'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'devise'
gem 'email_spec'
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
gem 'rspec-rails', '~> 2.5', :group => [:test, :development]
group :test do
  # Pretty printed test output
#  gem 'turn', :require => false
	gem 'factory_girl_rails'
	gem 'capybara'
	gem 'guard-rspec'
	gem 'guard-cucumber'
	gem 'spork', '> 0.9.0.rc'
	gem 'guard-spork'
	gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
	gem 'growl'
	gem 'cucumber-rails'
	gem 'database_cleaner'
end
