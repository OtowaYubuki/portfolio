class RemoveTagFromCounselings < ActiveRecord::Migration[6.1]
  def change
    remove_column :counselings, :tag, :string
  end
end
