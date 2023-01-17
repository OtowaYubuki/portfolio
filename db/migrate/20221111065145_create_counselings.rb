class CreateCounselings < ActiveRecord::Migration[6.1]
  def change
    create_table :counselings do |t|
      t.string :name
      t.text :content
      t.datetime :date
      t.integer :people

      t.timestamps
    end
  end
end
