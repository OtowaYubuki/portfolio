class InfluencerGenre < ApplicationRecord
  belongs_to :genre
  belongs_to :influencer
end
