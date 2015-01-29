source 'https://rubygems.org'

gem 'rails', '~> 4.2.0'

gem 'pg', '~> 0.17.0'                       # DB adapter
gem 'redis'                                 # === Redis sore
gem 'redis-rails'                           # adapter ======

# Servers
gem 'unicorn', '~> 4.7.0'

# Auth
gem 'devise'
gem 'cancancan', '~> 1.9'

# Utils
gem 'rails_config', '~> 0.4.2'                # Configuration for rails application
gem 'yajl-ruby', '~> 1.1.0', require: 'yajl'  # JSON parser
gem 'jbuilder', '~> 2.0'                      # JSON template engine

gem 'awesome_print'                           # === Console utils and
gem 'hirb'                                    # tools. ==============

gem 'kaminari'                                # Pagination tool

# Js and CSS
gem 'slim'                                    # Template engine
gem 'sass-rails', '~> 5.0.0'                  # CSS extension language
gem 'compass-rails'                           # CSS Authoring Framework
gem 'jquery-rails'                            # jQuery and jquery_ujs
gem 'uglifier', '>=1.3.0'
gem 'gon'                                     # Global JS variable from backend
gem 'high_voltage'                            # Static page engine

gem 'gibberish'

group :development, :test do
  gem 'spring'
end

group :development do
  # Deployment
  gem 'capistrano', '~> 3.2.0'                # ================ #
  gem 'capistrano-rails', '~> 1.1.0'          #                  #
  gem 'capistrano-bundler'                    #   CAPISTRANO     #
  gem 'capistrano-ext', '~>1.2.1'             #      Tools       #
  gem 'capistrano3-unicorn'                   #                  #
  gem 'rvm1-capistrano3', require: false      # ================ #

  gem 'rack-mini-profiler'                    # Profiler

  gem 'mailcatcher'                           # ============================== #
  gem 'better_errors'                         # Debug tool for mail and errors #
  gem 'binding_of_caller'                     # ============================== #
end

group :test do
  gem 'rspec-rails', '~> 3.0.0'
  gem 'rspec-expectations'
  gem 'rspec-rails-caching'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails', '~> 4.5.0'
end