class Article < ApplicationRecord
  has_many :comments, :dependent => :destroy
  validates :title, presence: true, length: { minimum: 140 }
  validates :text, presence: true, length: { minimum: 4000 }

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
