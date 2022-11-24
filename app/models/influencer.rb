class Influencer < ApplicationRecord
  has_one_attached :influencer_image
  has_many :counselings
  has_many :relationships, dependent: :destroy
end
