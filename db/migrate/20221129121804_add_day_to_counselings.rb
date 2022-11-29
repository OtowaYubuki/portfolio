class AddDayToCounselings < ActiveRecord::Migration[6.1]
  def change
    add_column :counselings, :day, :date
  end
end
