class AddGenreToInfluencers < ActiveRecord::Migration[6.1]
  def create
    add_column :influencers, :genre, :string
  end
end
