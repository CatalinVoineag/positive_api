source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 3.11'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'httparty'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'rspec-rails', '~> 3.7.1'
  gem 'rubocop', '~> 0.82.0', require: false
  gem 'awesome_print'
end

  group :test do
    gem 'database_cleaner', '~> 1.7'
    gem 'factory_bot_rails'
    gem 'shoulda-matchers'
    gem 'simplecov'
    gem 'timecop'
    gem 'vcr'
  end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
