class RemoveDateFromCounseling < ActiveRecord::Migration[6.1]
  def change
    remove_column :counselings, :date, :counseling
  end
end
