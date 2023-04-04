require 'spec_helper'

RSpec.describe Article, type: :model do
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
    it { should validate_length_of(:title).is_at_least(140).with_message("is too short (minimum is 140 characters)") }
    it { should validate_length_of(:text).is_at_least(4000).with_message("is too short (minimum is 4000 characters)") }
  end

  describe 'associations' do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      # create article object
      article = create(:article, title: 'Lorem Ipsum' * 20)

      # assert, проверка
      expect(article.subject).to eq 'Lorem Ipsum' * 20
    end
  end

  describe "#last_comment" do
    it "returns last comment" do
      # create article with 3 comments
      article = create(:article_with_comments)

      # assert check
      expect(article.last_comment.body).to eq "comment body 3" * 310
    end
  end
end
