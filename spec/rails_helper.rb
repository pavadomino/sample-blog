require 'shoulda/matchers'
require 'rspec/rails'
require 'support/factory_girl'

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
