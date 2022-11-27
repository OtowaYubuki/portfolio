class AddGenreToInfluencers < ActiveRecord::Migration[6.1]
  def change
    add_column :influencers, :genre, :string
  end
end
