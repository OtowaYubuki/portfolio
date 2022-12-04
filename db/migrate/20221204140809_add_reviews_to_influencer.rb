class AddReviewsToInfluencer < ActiveRecord::Migration[6.1]
  def change
    add_column :influencers, :reviews, :integer
  end
end
