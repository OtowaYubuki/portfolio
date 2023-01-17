class RemoveReviewsFromInfluencers < ActiveRecord::Migration[6.1]
  def change
    remove_column :influencers, :reviews, :integer
  end
end
