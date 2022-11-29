class AddStartdayToCounselings < ActiveRecord::Migration[6.1]
  def change
    add_column :counselings, :startday, :datetime
  end
end
