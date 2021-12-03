class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :image, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
end
