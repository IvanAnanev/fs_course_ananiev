require "capybara/rspec"
require "capybara-screenshot/rspec"

Capybara.configure do |config|
  config.match = :prefer_exact
  config.javascript_driver = :webkit
  config.asset_host = "http://#{ENV.fetch('HOST')}"
end

Capybara::Screenshot.prune_strategy = { keep: 10 }
Capybara::Screenshot.webkit_options = { width: 1280, height: 1024 }
