# spec/support/factory_girl.rb
require 'spec_helper'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
