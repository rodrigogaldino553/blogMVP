class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :comments, dependent: :destroy

  #def to_s
  #  email
  #end

  #def username(email)
  #  email.split(/@/).first
  #end

  #after_create :set_user_role

  #def set_user_role
    #por hora todo mundo vai ser admin false, mas futuramente posso add outros roles quem sabe
  #  self.admin = false
  #end
  # depois ver de add um role "false" pra todos os users na hr de cadastrar, dava pra fzr isso no controller, mas aqui nao tem, no corsego eu fiz
end
