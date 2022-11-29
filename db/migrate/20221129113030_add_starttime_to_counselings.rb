class AddStarttimeToCounselings < ActiveRecord::Migration[6.1]
  def change
    add_column :counselings, :starttime, :time
  end
end
