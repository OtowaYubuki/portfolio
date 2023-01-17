class AddStartdateToCounselings < ActiveRecord::Migration[6.1]
  def change
    add_column :counselings, :startdate, :date
  end
end
