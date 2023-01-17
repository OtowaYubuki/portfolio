class AddCounselingImageToCounselings < ActiveRecord::Migration[6.1]
  def change
    add_column :counselings, :counseling_image, :string
  end
end
