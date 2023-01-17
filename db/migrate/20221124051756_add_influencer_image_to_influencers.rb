class AddInfluencerImageToInfluencers < ActiveRecord::Migration[6.1]
  def change
    add_column :influencers, :influencer_image, :string
  end
end
