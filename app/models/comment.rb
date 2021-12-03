class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user # logo vai ser user
end
