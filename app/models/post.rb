class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 50 }
  validates :image, presence: true
end
