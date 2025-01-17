# source "https://rubygems.org"

# Use Rails 8.0 or specify the version you need
gem "rails", "~> 8.0.1"

# The modern asset pipeline for Rails
gem "propshaft"

# Use Puma web server (default for Rails)
gem "puma", ">= 5.0"

# Use JavaScript with ESM import maps
gem "importmap-rails"

# Hotwire's SPA-like page accelerator
gem "turbo-rails"

# Hotwire's modest JavaScript framework
gem "stimulus-rails"

# Gem for building JSON APIs
gem "jbuilder"

# For working with authentication
gem "devise"

# For handling timezones on Windows
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching
gem "bootsnap", require: false

# Group gems that are used only in development and test
group :development, :test do
  # Debugging tool
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities
  gem "brakeman", require: false

  # Use the web-console in development for easier debugging
  gem "web-console"
end

# Group gems for testing
group :test do
  # System testing tools
  gem "capybara"
  gem "selenium-webdriver"
end