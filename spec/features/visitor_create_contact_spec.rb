require 'spec_helper'

feature "Contact Creation" do
  scenario "allow access to contacts page" do
    visit new_contacts_path

    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario "allow a guest to create contact" do

  end
end
