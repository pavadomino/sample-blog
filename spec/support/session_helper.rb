require 'spec_helper'

def sign_up
  visit new_user_registration_path
  fill_in :user_email, with: 'user@example.com'
  fill_in :user_username, with: 'TestUser'
  fill_in :user_password, with: 'q1234567'
  fill_in :user_password_confirmation, with: 'q1234567'
  click_button 'Sign up'
end

def create_article
  visit new_article_path
  title = "Article title" * 20

  fill_in :article_title, with: title
  fill_in :article_text, with: "Article text " * 410

  click_button "Save article"
end
