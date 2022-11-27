class Influencer < ApplicationRecord
  has_many :counselings
  has_many :relationships, dependent: :destroy
  has_one_attached :influencer_image
  has_many :influencer_genres
  has_many :genres, through: :influencer_genres
end
