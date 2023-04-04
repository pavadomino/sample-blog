require 'spec_helper'

feature "Comment Creation" do
  before(:each) do
    sign_up
  end

  scenario "allows user to visit article page to perform comment" do
    create_article
    visit article_path("#{Article.last.id}")
    expect(page).to have_content "Article title" * 20
  end

  scenario "allows user to create new comment" do
    create_article
    visit article_path("#{Article.last.id}")
    fill_in :comment_body, with: 'Comment test' * 410

    click_button "Send comment"
    expect(page).to have_content 'Comment test' * 410
  end
end
