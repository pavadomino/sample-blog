FactoryBot.define do
  factory :article do
    title { "Article title" * 11 }
    text { "Article text" * 410 }

    # creating factory for article with few comments
    factory :article_with_comments do
      after :create do |article, evluator|
        # creating 3 comments
        create_list :comment, 3, article: article
      end
    end
  end
end
