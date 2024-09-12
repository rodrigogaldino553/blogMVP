class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :image, presence: true

  belongs_to :user
  belongs_to :posts_view, counter_cache: true
  has_many :comments, dependent: :destroy
end
