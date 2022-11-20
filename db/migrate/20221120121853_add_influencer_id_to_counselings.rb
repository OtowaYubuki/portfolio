class AddInfluencerIdToCounselings < ActiveRecord::Migration[6.1]
  def change
    add_column :counselings, :influencer_id, :integer
  end
end
