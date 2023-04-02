class Comment < ApplicationRecord
  belongs_to :article
  validates :body, presence: true, length: {minimum: 4000, maximum: 8000}
end
