source 'https://rubygems.org'

gem 'rails', '3.2.2'
################################################
# テスト環境用
################################################
group :test do
  gem 'spork'
end

################################################
# テスト・開発環境用
################################################
group :test, :development do
  # Bundle edge Rails instead:
  # gem 'rails', :git => 'git://github.com/rails/rails.git'
  # sqlite
  # gem 'sqlite3'
  # mysql
  gem 'mysql2'
  # 国際化
  gem 'rails-i18n'
  # パンくずリスト対応
  gem 'crummy'
  # ユーザー認証
  gem "devise"
  # Deploy with Capistrano
  gem 'rvm-capistrano'
  # 検索フォーム
  gem 'ransack'
  # くるくる画像
  gem 'spinjs-rails'

  # Gems used only for assets and not required
  # in production environments by default.
  group :assets do
    #gem 'sass-rails',   '~> 3.2.3'
    gem 'coffee-rails'

    # See https://github.com/sstephenson/execjs#readme for more supported runtimes
    # gem 'therubyracer'

    gem 'uglifier', '>= 1.0.3'
#    gem 'less'
    gem 'less-rails'
  end

  gem 'jquery-rails'
  # To use ActiveModel has_secure_password
  #gem 'bcrypt-ruby', '~> 3.0.0', require: 'bcrypt'
  gem 'twitter-bootstrap-rails'

  #gem 'bootstrap-sass-rails'
  gem 'i18n_generators'
  gem 'simple_form'
  gem 'kaminari'
  gem "jquery_datepicker"
  gem "jquery-ui-themes"

  # Test
  gem 'factory_girl_rails', '~> 1.4.0'
  gem 'rails3-generators'
  gem 'rspec-rails'
  gem 'ruby_gntp'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'rb-fsevent', :require => false
  gem 'database_cleaner'
  gem 'rr'
  gem 'webmock', require: 'webmock/rspec'
  gem 'capybara'
  gem 'launchy'

  # Amazon AWS
  gem 'aws-ses'

  # Profiling
  gem 'ruby-prof'
  gem 'rack-contrib'
end

################################################
# リハーサル環境用
################################################
group :staging do
  gem 'rails', '3.2.2'
  # Bundle edge Rails instead:
  # gem 'rails', :git => 'git://github.com/rails/rails.git'
  # mysql
  gem 'mysql2'
  # 国際化
  gem 'rails-i18n'
  # パンくずリスト対応
  gem 'crummy'
  # ユーザー認証
  gem "devise"
  # Gems used only for assets and not required
  # in production environments by default.
  group :assets do
    # See https://github.com/sstephenson/execjs#readme for more supported runtimes
    gem 'therubyracer'

    gem 'uglifier', '>= 1.0.3'
  end
  gem 'jquery-rails'

  # Deploy with Capistrano
  gem 'rvm-capistrano'
  gem 'execjs'
  # Javascript run time
  gem 'therubyracer'
  # To use ActiveModel has_secure_password
  gem 'bcrypt-ruby', '~> 3.0.0', require: 'bcrypt'
end

################################################
# 本番環境用
################################################
group :production do
  # nginx + unicorn
  gem 'unicorn'
  gem 'therubyracer'

  # sqlite
  # gem 'sqlite3'
  # mysql
  gem 'mysql2'
  # gem 'mysql2','0.2.7'

  # 国際化
  gem 'rails-i18n'
  # パンくずリスト対応
  gem 'crummy'
  # ユーザー認証
  gem "devise"
  # Deploy with Capistrano
  gem 'rvm-capistrano'

  # Gems used only for assets and not required
  # in production environments by default.
  group :assets do
    #gem 'sass-rails',   '~> 3.2.3'
    gem 'coffee-rails'

    # See https://github.com/sstephenson/execjs#readme for more supported runtimes
    # gem 'therubyracer'

    gem 'uglifier', '>= 1.0.3'
#    gem 'less'
    gem 'less-rails'
  end

  gem 'jquery-rails'
  # To use ActiveModel has_secure_password
  gem 'bcrypt-ruby', '~> 3.0.0', require: 'bcrypt'
  gem 'twitter-bootstrap-rails'

  #gem 'bootstrap-sass-rails'
  gem 'i18n_generators'
  gem 'simple_form'
  gem 'kaminari'
  gem "jquery_datepicker"
  gem "jquery-ui-themes"

  # Amazon AWS
  gem 'aws-ses'

  # Profiling
  gem 'ruby-prof'
  gem 'rack-contrib'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

