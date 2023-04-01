require 'shoulda/matchers'
require 'rspec/rails'
require 'factory_bot'

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
