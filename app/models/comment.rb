class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :admin # logo vai ser user
end
