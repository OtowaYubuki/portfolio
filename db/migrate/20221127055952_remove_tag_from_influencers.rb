class RemoveTagFromInfluencers < ActiveRecord::Migration[6.1]
  def change
    remove_column :influencers, :tag, :string
  end
end
