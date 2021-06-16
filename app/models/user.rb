class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tourings
  has_many :likes
  has_many :liked_tourings, through: :likes, source: :touring

  with_options presence: true do
  validates :nickname
  validates :birthday
  end

  def already_liked?(touring)
    self.likes.exists?(touring_id: touring.id)
  end
end
