class Counseling < ApplicationRecord
  has_one_attached :counseling_image
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
  has_many :reservations, dependent: :destroy
  belongs_to :influencer
end
