source 'http://rubygems.org'

gem 'rails', '~> 4.2.0'
gem 'mysql2', '~> 0.4.10'
gem 'puma'
gem 'paperclip'
gem 'haml-rails'
gem 'jquery-rails'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
gem "modernizr-rails"
# gem 'hitcents_base', github: 'Andrew-Rice/hitcents_base'
gem "font-awesome-rails"
gem 'sprockets-rails'
gem 'bourbon'
gem 'active_link_to'
gem 'holder_rails'
gem 'uglifier'
gem "ckeditor", '4.2.4'
gem 'will_paginate'
gem 'simple_form'
gem 'state_machine'
gem 'email_validator'
gem 'recaptcha', require: 'recaptcha/rails', github: 'ambethia/recaptcha'
gem 'magnific-popup-rails'
gem 'activeadmin'#, github: 'gregbell/active_admin'
gem 'devise', github: 'plataformatec/devise'
# gem 'hitcents_auth', git: "git@bitbucket.org:hitcents-webdev/hitcents_auth.git"
gem 'acts_as_list'
gem 'activeadmin-sortable'
gem 'nokogiri', '1.6.0'
gem 'sinatra', :require => nil
gem 'sidekiq'
gem "sidekiq-cron"
gem 'rufus-scheduler' #have to specify this because sidekiq crong doesnt work with 3.5
# gem 'redis-namespace'

group :development do
  gem "quiet_assets"
  gem "letter_opener"
  gem 'guard',       :require => false,          group: :doc
  gem 'guard-livereload',        :require => false,          group: :doc
  gem 'rack-livereload',          group: :doc
  gem 'capistrano'
  gem 'web-console', '~> 2.0'
  # gem 'capistrano-hitcents', require: false, git: 'git@bitbucket.org:hitcents-webdev/capistrano-hitcents', branch: 'v3'
  gem 'capistrano-sidekiq', require: false
end

group :test, :development do
  gem 'spork-rails'
  #gem 'guard-rspec'
  gem 'guard-spork'
  #gem 'rspec-rails'
  gem 'factory_girl_rails'
end
gem 'rails_12factor', group: :production