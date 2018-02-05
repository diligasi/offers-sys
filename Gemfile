source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Essential Gems ###############################################################
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.4'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Integrations Gems ############################################################
gem 'devise'
gem 'rails_admin', '~> 1.2'
gem 'rails_admin_rollincode', '~> 1.1'
gem 'remotipart', '~> 1.2'

# Extensions Gems ##############################################################
gem 'figaro', '~> 1.1', '>= 1.1.1'
gem 'jbuilder', '~> 2.5'

# Assets Gems ##################################################################
gem 'coffee-rails', '~> 4.2'
gem 'sass-rails', '~> 5.0'
gem 'therubyracer', platforms: :ruby
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

# Gems per Groups ##############################################################
group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'guard-rspec', '~> 4.7', '>= 4.7.3'
  gem 'rspec-rails', '~> 3.7', '>= 3.7.2'
  gem 'spring-commands-rspec', '~> 1.0', '>= 1.0.4'
end

group :development do
  gem 'listen', '~> 3.1', '>= 3.1.5'
  gem 'spring', '~> 2.0', '>= 2.0.2'
  gem 'spring-watcher-listen', '~> 2.0', '>= 2.0.1'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner', '~> 1.6', '>= 1.6.2'
  gem 'factory_bot_rails', '~> 4.8', '>= 4.8.2'
  gem 'faker', '~> 1.8', '>= 1.8.7'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
end
