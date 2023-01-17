class RemoveStartdayFromCounselings < ActiveRecord::Migration[6.1]
  def change
    remove_column :counselings, :startday, :datetime
  end
end
