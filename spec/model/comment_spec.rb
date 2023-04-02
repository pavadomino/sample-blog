require 'spec_helper'
require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should belong_to :article }
  it { should validate_length_of(:body).is_at_least(4000).with_message("is too short (minimum is 4000 characters)") }
end
