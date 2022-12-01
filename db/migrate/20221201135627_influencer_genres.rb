class InfluencerGenres < ActiveRecord::Migration[6.1]
  def change
    drop_table :influencer_genres
  end
end
