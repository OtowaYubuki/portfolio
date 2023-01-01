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
  has_many :reservation_counselings, through: :reservations, source: :counseling
  has_many :relationships, dependent: :destroy
  has_many :follow_influencers, through: :relationships, source: :influencer
  has_many :reviews, dependent: :destroy
  has_many :influencers, through: :reviews

  def already_favorited?(counseling)
    self.favorites.exists?(counseling_id: counseling.id)
  end

  def already_reserved?(counseling)
    self.reservations.exists?(counseling_id: counseling.id)
  end

  def already_followed?(influencer)
    self.relationships.exists?(influencer_id: influencer.id)
  end

  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank? 
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update(params, *options)
    clean_up_passwords
    result
  end

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
end
