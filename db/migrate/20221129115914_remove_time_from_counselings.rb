class RemoveTimeFromCounselings < ActiveRecord::Migration[6.1]
  def change
    remove_column :counselings, :time, :time
  end
end
