class AddTimeToCounselings < ActiveRecord::Migration[6.1]
  def change
    add_column :counselings, :time, :dtetime
  end
end
