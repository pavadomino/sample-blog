require 'spec_helper'

feature "Article Edition" do
  before(:each) do
    sign_up
  end

  scenario "allows user to visit edit article page" do
    create_article
    visit edit_article_path("#{Article.last.id}")

    expect(page).to have_content "Edit article"
  end

  scenario "allows user to edit article page" do
    create_article
    visit edit_article_path("#{Article.last.id}")
    fill_in :article_text, with: "Article text" * 411

    click_button "Modify article"
    expect(page).to have_content "Article text" * 411
  end
end
