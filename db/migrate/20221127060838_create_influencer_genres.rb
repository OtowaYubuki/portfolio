class CreateInfluencerGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :influencer_genres do |t|
      t.integer :influencer_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
