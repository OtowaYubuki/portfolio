class RemoveCounselingImageFromCounselings < ActiveRecord::Migration[6.1]
  def change
    remove_column :counselings, :counseling_image, :string
  end
end
