class Influencer < ApplicationRecord
  has_many :counselings
  has_many :relationships, dependent: :destroy
  mount_uploader :influencer_image, ImageUploader
end
