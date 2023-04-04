require 'spec_helper'

feature "Article Creation" do
  before(:each) do
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content I18n.t('article.new_article')
  end

  scenario "allows user to create new article" do
    visit new_article_path
    title = "Article title" * 20

    fill_in :article_title, with: title
    fill_in :article_text, with: "Article text " * 410

    click_button "Save article"
    expect(page).to have_content I18n.t('article.created_article')
  end
end
