source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.1'
gem 'haml-rails'
gem 'pg'
gem 'puma'
gem 'sass-rails'
gem 'uglifier'
gem 'turbolinks'
gem 'jbuilder'

group :development, :test do
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'pry-byebug'
  gem 'capybara'
  gem 'rspec-rails'
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers', '3.1.1', require: false
  gem 'simplecov', require: false
end
