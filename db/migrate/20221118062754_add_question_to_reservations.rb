class AddQuestionToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :question, :text
  end
end
