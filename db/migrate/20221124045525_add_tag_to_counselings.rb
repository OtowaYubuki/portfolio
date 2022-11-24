class AddTagToCounselings < ActiveRecord::Migration[6.1]
  def change
    add_column :counselings, :tag, :string
  end
end
