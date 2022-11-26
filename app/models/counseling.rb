class Counseling < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
  has_many :reservations, dependent: :destroy
  belongs_to :influencer
  mount_uploader :counseling_image, ImageUploader
end
