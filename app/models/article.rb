class Article < ApplicationRecord
  has_many :comments, :dependent => :destroy
  validates :title, presence: true
  validates :text, presence: true

  def subject
    title
  end
end
