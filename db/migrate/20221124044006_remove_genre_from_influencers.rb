class RemoveGenreFromInfluencers < ActiveRecord::Migration[6.1]
  def change
    remove_column :influencers, :genre, :string
  end
end
