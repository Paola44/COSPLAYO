class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.datetime :starting_date
      t.datetime :ending_date
      t.string :status
      t.float :total_price
      t.references :costume, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
