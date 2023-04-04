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
    create_article

    expect(page).to have_content I18n.t('article.created_article')
  end
end
