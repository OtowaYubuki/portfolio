class Genre < ApplicationRecord
  has_many :influencer_genres
  has_many :influencers, through: :influencer_genres
end
