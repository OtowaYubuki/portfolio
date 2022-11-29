class RemoveOpentimeFromCounselings < ActiveRecord::Migration[6.1]
  def change
    remove_column :counselings, :opentime, :datetime
  end
end
