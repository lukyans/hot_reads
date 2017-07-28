source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'rails_12factor'
gem 'jquery-datatables-rails'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'responders'
gem 'awesome_print'
gem 'sprockets-es6'
gem 'bcrypt', '~> 3.1.7'
gem "validate_url"

group :development, :test do
  gem 'rspec-rails', '~> 3.6'
  gem 'rspec-core', '~> 3.6'
  gem 'capybara'
  gem 'launchy'
  gem 'pry'
  gem 'simplecov', :require => false
  gem 'spring'
  gem 'database_cleaner'
  gem 'better_errors'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'selenium-webdriver', '~> 2.53.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
