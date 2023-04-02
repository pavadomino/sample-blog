require 'spec_helper'

feature "Contact Creation" do
  scenario "allow access to contacts page" do
    visit new_contacts_path

    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario "allow a guest to create contact" do
    visit new_contacts_path
    fill_in :contact_email, with: 'user@example.com'
    fill_in :contact_message, with: 'Test message'

    click_button 'Send message'
    expect(page).to have_content 'Thanks!'
  end
end
