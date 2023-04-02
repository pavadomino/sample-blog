require 'spec_helper'

def sign_up
  visit new_user_registration_path
  fill_in :user_email, with: 'user@example.com'
  fill_in :user_username, with: 'TestUser'
  fill_in :user_password, with: 'q1234567'
  fill_in :user_password_confirmation, with: 'q1234567'
  click_button 'Sign up'
end
