source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'haml-rails'
gem 'jbuilder'
gem 'jquery-datatables'
gem 'jquery-rails'
gem 'json', '1.8.6'
gem 'neo4j'
gem 'pg', '0.18'
gem 'puma'
gem 'rails', '5.1.4'
gem 'sass-rails'
gem 'turbolinks'
gem 'uglifier'

group :development, :test do
  gem 'capybara'
  gem 'neo4j-rake_tasks'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen'
  # gem 'spring'
  # gem 'spring-commands-rspec'
  # gem 'spring-watcher-listen'
  gem 'web-console'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers', '3.1.1', require: false
  gem 'simplecov', require: false
end
