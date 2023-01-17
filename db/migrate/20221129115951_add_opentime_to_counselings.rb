class AddOpentimeToCounselings < ActiveRecord::Migration[6.1]
  def change
    add_column :counselings, :opentime, :datetime
  end
end
