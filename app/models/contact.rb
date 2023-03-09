class Contact < ApplicationRecord
  validates :email, presence: true
  validetes :message, presence: true
end
