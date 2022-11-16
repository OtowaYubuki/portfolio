class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  has_one_attached :image
  has_many :favorites, dependent: :destroy
  has_many :counselings, through: :favorites
  has_many :reservations, dependent: :destroy

  def already_favorited?(counseling)
    self.favorites.exists?(counseling_id: counseling.id)
  end
end
