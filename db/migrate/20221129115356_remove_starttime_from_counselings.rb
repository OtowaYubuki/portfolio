class RemoveStarttimeFromCounselings < ActiveRecord::Migration[6.1]
  def change
    remove_column :counselings, :starttime, :time
  end
end
