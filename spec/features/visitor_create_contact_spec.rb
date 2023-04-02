require 'spec_helper'

feature "Contact Creation" do
  scenario "allow access to contacts page" do
    visit new_contacts_path
    expect(page).to have_content 'Contact us'

  end
end
