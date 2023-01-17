class AddTagToInfluencers < ActiveRecord::Migration[6.1]
  def change
    add_column :influencers, :tag, :string
  end
end
