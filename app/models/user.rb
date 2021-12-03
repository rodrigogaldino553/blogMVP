class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_many :posts
  has_many :comments, dependent: :destroy

  # depois ver de add um role "false" pra todos os users na hr de cadastrar, dava pra fzr isso no controller, mas aqui nao tem, no corsego eu fiz
end
