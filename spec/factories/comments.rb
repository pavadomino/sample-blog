FactoryBot.define do
  factory :comment do
    author { "Mike" }
    sequence(:body) { |n| "comment body #{n}" * 310 }
  end
end
