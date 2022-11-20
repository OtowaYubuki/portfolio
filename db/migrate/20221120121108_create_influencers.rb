class CreateInfluencers < ActiveRecord::Migration[6.1]
  def change
    create_table :influencers do |t|
      t.string :name
      t.text :profile
      t.string :genre

      t.timestamps
    end
  end
end
